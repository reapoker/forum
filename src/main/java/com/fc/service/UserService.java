package com.fc.service;

import com.fc.async.MailTask;
import com.fc.async.MessageTask;
import com.fc.mapper.MessageMapper;
import com.fc.mapper.UserMapper;
import com.fc.model.Info;
import com.fc.model.User;
import com.fc.util.MyConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.task.TaskExecutor;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.Transaction;

import java.util.*;

import static com.fc.util.Mymd5.inputPassToDbPass;


@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private TaskExecutor taskExecutor;//任务执行器，实现多线程和并发编程，操作线程池

    @Autowired
    private JedisPool jedisPool;//redis连接池

    //获取主页信息
    public User getProfile(int sessionUid, int uid) {
        //如果是浏览别人的主页，则增加主页浏览数
        if(sessionUid!=uid){
            userMapper.updateScanCount(uid);
        }
        //从数据库得到User对象
        User user = userMapper.selectUserByUid(uid);
        //设置获赞数，关注数，粉丝数
        // Scard 命令返回redis集合中key元素的数量。
        // Hget 命令用于返回哈希表中指定字段的值。
        Jedis jedis = jedisPool.getResource();
        Set<String>members = jedis.sinter(uid+":follow",uid+":fans");
        long conut = 0;
        for (String member:
             members) {
            Set<String>keys = jedis.sinter(member+":follow",member+":fans");
            for (String key:
                 keys) {
                if (Integer.valueOf(key) == uid){
                    conut++;
                    break;
                }
            }
        }
        user.setFollowCount((int)conut);
        user.setFollowerCount((int)conut);
        String likeCount = jedis.hget("vote",uid+"");
        if(likeCount==null){
            user.setLikeCount(0);
        }else {
            user.setLikeCount(Integer.valueOf(likeCount));
        }

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
        return user;
    }

    //获取要编辑的个人信息
    public User getEditInfo(int uid) {
        return userMapper.selectEditInfo(uid);
    }

    //更新个人信息
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    //记录访问的ip url path
    public void record(StringBuffer requestURL, String contextPath, String remoteAddr) {
        Info info = new Info();
        info.setRequestUrl(requestURL.toString());
        info.setContextPath(contextPath);
        info.setRemoteAddr(remoteAddr);//取得客户端的IP地址
        userMapper.insertInfo(info);
    }

    //按加入时间获取用户列表
    public List<User> listUserByTime() {
        return userMapper.listUserByTime();
    }

    //按发帖数量获取用户列表
    public List<User> listUserByHot() {
        return userMapper.listUserByHot();
    }

    //获取好友列表
    public List<User> listUserByFriend(int uid) {
        Jedis jedis = jedisPool.getResource();
        List<User> friends = new LinkedList<>();
        Set<String>members = jedis.sinter(uid+":follow",uid+":fans");
        for (String member:
                members) {
            Set<String>keys = jedis.sinter(member+":follow",member+":fans");
            for (String key:
                    keys) {
                if (Integer.valueOf(key) == uid){
                    friends.add(userMapper.selectUserByUid(Integer.valueOf(member)));
                    break;
                }
            }
        }
        return friends;
    }


    //推荐好友
    public List<User> listUserByRecommend(int uid){
        List<User> res = new LinkedList<>();

        Jedis jedis = jedisPool.getResource();
        List<User> myFriends = listUserByFriend(uid);
        Map<Integer,Integer> mp = new HashMap<>();
        if (myFriends != null)
            for (User friend:
                 myFriends) {
                List<User> otherFriends = listUserByFriend(friend.getUid());
                for (User otherFriend:
                     otherFriends) {
                    if (otherFriend.getUid() == uid) continue;
                    Integer num = mp.get(otherFriend.getUid());
                    if (num == null) mp.put(otherFriend.getUid(),1);
                    else{
                        num++;
                        mp.put(otherFriend.getUid(),num);
                        if (num >= 2) res.add(otherFriend);
                    }
                }
            }

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
        return res;
    }

    //更新头像地址
    public void updateHeadUrl(int uid, String headUrl) {
        userMapper.updateHeadUrl(uid,headUrl);
    }

    //删除好友
    public void unfollow(int sessionUid, int uid) {
        Jedis jedis = jedisPool.getResource();
        // redis multi 标记一个事务块的开始。
        // 事务块内的多条命令会按照先后顺序被放进一个队列当中，
        // 最后由 exec 命令原子性地执行。
        // Srem 命令用于移除集合中的一个或多个成员元素，不存在的成员元素会被忽略。
        Transaction tx = jedis.multi();
        tx.srem(sessionUid+":follow", String.valueOf(uid));
        tx.srem(uid+":fans", String.valueOf(sessionUid));
        tx.exec();

        Transaction txs = jedis.multi();
        txs.srem(uid+":follow", String.valueOf(sessionUid));
        txs.srem(sessionUid+":fans", String.valueOf(uid));
        txs.exec();

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
    }

    //申请好友
    public void follow(int sessionUid, int uid){
        //Sadd 命令将一个或多个成员元素加入到集合中，已经存在于集合的成员元素将被忽略。
        Jedis jedis = jedisPool.getResource();

        Transaction tx = jedis.multi();
        tx.sadd(sessionUid+":follow", String.valueOf(uid));
        tx.sadd(uid+":fans", String.valueOf(sessionUid));
        tx.exec();

        taskExecutor.execute(new MessageTask(messageMapper,userMapper,uid,sessionUid, MyConstant.OPERATION_FOLLOW));

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
    }

    //拒绝好友申请
    public void refused(int sessionUid, int uid){
        Jedis jedis = jedisPool.getResource();

        Transaction tx = jedis.multi();
        tx.srem(sessionUid+":follow", String.valueOf(uid));
        tx.srem(uid+":fans", String.valueOf(sessionUid));
        tx.exec();

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
    }

    //好友申请通过
    public void followed(int sessionUid, int uid) {
        //Sadd 命令将一个或多个成员元素加入到集合中，已经存在于集合的成员元素将被忽略。
        Jedis jedis = jedisPool.getResource();
        System.out.println(uid);
        Transaction tx = jedis.multi();
        tx.sadd(sessionUid+":follow", String.valueOf(uid));
        tx.sadd(uid+":fans", String.valueOf(sessionUid));
        tx.exec();

        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
    }

    //获取是否关注当前用户的状态
    public int getFollowStatus(int sessionUid, int uid) {
        int res = 0;
        Jedis jedis = jedisPool.getResource();
        //Sismember 命令判断成员元素是否是集合的成员。
        if (jedis.sismember(sessionUid+":follow", String.valueOf(uid))) res++;
        if (jedis.sismember(uid+":follow", String.valueOf(sessionUid))) res++;
        if(jedis!=null){
            jedisPool.returnResource(jedis);
        }
        return res;
    }

    //更新密码
    public String updatePassword(String password, String newpassword, String repassword, int sessionUid) {

        String oldPassword = userMapper.selectPasswordByUid(sessionUid);
        //加密加盐
        password = inputPassToDbPass(password);
        if(!oldPassword.equals(password)){
            return "原密码输入错误~";
        }

        if(newpassword.length()<6 ||newpassword.length()>20){
            return "新密码长度要在6~20之间~";
        }

        if(!newpassword.equals(repassword)){
            return "新密码两次输入不一致~";
        }

        //加密加盐
        newpassword = inputPassToDbPass(newpassword);
        userMapper.updatePassword(newpassword,sessionUid);
        return "ok";
    }

    //发送忘记密码确认邮件
    public void forgetPassword(String email) {
        String verifyCode = userMapper.selectVerifyCode(email);
        System.out.println("verifyCode:"+verifyCode);
        //多线程异步发送邮件
        taskExecutor.execute(new MailTask(verifyCode,email,javaMailSender,2));
    }

    //忘记密码
    public void verifyForgetPassword(String code,String password) {
        System.out.println("更新前："+code);
        password = inputPassToDbPass(password);
        userMapper.updatePasswordByActivateCode(code,password);
        System.out.println("更新后："+code);
    }

    //用户名模糊查询
    public List<User> selectLikeUser(String likename){
        return userMapper.selectLikeUser(likename);
    }
}

