package com.fc.controller;


import com.fc.model.User;
import com.fc.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/")
public class LoginController {

    @Autowired
    private LoginService loginService;


    /**
     * 去注册和登录的页面
     * @return
     */
    @RequestMapping("/toLogin.do")
    public String toLogin(){
        return "login";
    }

    /**
     * 注册
     * @param user
     * @param repassword
     * @param model
     * @return
     */
    @RequestMapping(value = "/register.do",method = RequestMethod.POST)
    public String register(User user, String repassword, Model model){
        String result = loginService.register(user,repassword);
        if(result.equals("ok")){
            model.addAttribute("title","注册信息");
            model.addAttribute("info","系统已经向你的邮箱发送了一封邮件哦，验证后就可以登录啦~");
            return "prompt/promptInfo";
        }else {
            model.addAttribute("register","yes");
            model.addAttribute("email",user.getEmail());
            model.addAttribute("error",result);
            model.addAttribute("username",user.getUsername());
            return "login";
        }
    }


    /**
     * 登录
     * @param user
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(User user,Model model,HttpSession session){
        Map<String,Object> map = loginService.login(user);
        if(map.get("status").equals("yes")){//设置session
            session.setAttribute("uid",map.get("uid"));
            session.setAttribute("headUrl",map.get("headUrl"));
            Object obj = session.getAttribute("fromUrl");
            if (obj != null){
                String fromUrl = obj.toString();
                return "redirect:"+fromUrl;
            }
            return "redirect:toMyProfile.do";
        }else {//登陆失败
            model.addAttribute("email",user.getEmail());
            model.addAttribute("error",map.get("error"));
            return "login";
        }
    }


    /**
     * 激活
     * @param code 激活码
     * @param model
     * @return
     */
    @RequestMapping(value = "/activate.do")
    public String activate(String code,Model model){
        loginService.activate(code);
        //设置登陆信息
        model.addAttribute("title","激活信息");
        model.addAttribute("info","您的账户已经激活成功，可以去登录啦~");
        return "prompt/promptInfo";
    }


    /**
     * 注销
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout.do",method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("uid");
        return "redirect:toIndex.do";
    }
}


