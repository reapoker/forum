<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>${user.username}的页面</title>
    <meta charset="utf-8"/>
    <link rel="icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/wangEditor.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/profile.css">
    <link rel="stylesheet" href="js/jquerytc/css/demo.css">
    <link rel="stylesheet" href="js/jquerytc/src/css/dialog.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
    <script src="js/jquerytc/src/jquery.dialog.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="contain">
    <!-- 中间主体板块 -->
    <div class="main w clearfix">
        <div class="m-left">
            <div class="user-image"><img src="${user.headUrl}"></div>
            <div class="user-info">
                <div class="user-name">${user.username}</div>
                <div class="user-desc">${user.description}</div>
                <div class="user-position">坐标：${user.position}</div>
                <div class="user-school">学校：${user.school}</div>
                <div class="user-job">工作：${user.job}</div>
            </div>
            <div class="clearfix" style="border-bottom: 1px dashed #ddd;"></div>
            <div class="user-button">
                <c:choose>
                    <c:when test="${following==2}">
                        <a href="unfollow.do?uid=${user.uid}" class="button-unfollow" onclick="return unfollow()">删除好友</a>
                    </c:when>
                    <c:when test="${following==1}">
                        <a class="button-following">等待申请</a>
                    </c:when>
                    <c:otherwise>
                        <a href="follow.do?uid=${user.uid}" class="button-follow" onclick="return follow()">加好友</a>
                    </c:otherwise>
                </c:choose>

            </div>

            <div class="user-post">
                <div class="user-post-title"><span></span>&nbsp;动态</div>
                <ul class="user-post-list">
                    <c:forEach items="${postList}" var="post">
                        <li>
                            <span class="glyphicon glyphicon-file"></span>&nbsp;
                            <a href="toPost.do?pid=${post.pid}">${post.title}</a>
                            <span class="user-post-time">发布于 ${post.publishTime}</span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="main-right">
            <div class="m-right">
                <div class="user-follow">
                    <div class="user-follow">好友<span class="user-count">${user.followCount}</span>人</div>
                    <%--<div class="user-follower">关注者<span class="user-count">${user.followerCount}</span>人</div>--%>
                </div>
                <div class="user-attr">
                    <span class="user-like-count">获赞：${user.likeCount}</span>
                    <span class="user-post-count">动态：${user.postCount}</span>

                </div>
                <div class="user-scan-count">个人主页被浏览${user.scanCount}次</div>



            </div>

            <div class="m-right-down">

                <div class="hot-user">
                    <div class="clearfix">
                        <div class="hot-user-title"><span></span>&nbsp;好友列表</div>
                    </div>
                    <ul class="hot-user-list">
                        <c:forEach items="${friend}" var="user">
                            <li class="clearfix">
                                <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img
                                        src="${user.headUrl}"></a>
                                <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

            </div>
        </div>
    </div><!-- 主体结束 -->

    <%@ include file="footer.jsp" %>
</div>
</body>
<script type="text/javascript">
    function follow() {
        var flag = false;
        $.sendConfirm({
            hideHeader: true,
            withCenter: true,
            msg: '确定加${user.username}为好友吗？',
            button: {
                confirm: '确认',
                cancel: '取消'
            },
            onConfirm: function() {
                console.log('点击确认！');
                window.location.replace("http://localhost:9999/df/follow.do?uid=${user.uid}");
            },
            onCancel: function() {
                console.log('点击取消！');
                flag = false;
            },
            onClose: function() {
                console.log('点击关闭！');
                flag = false;
            }
        });
        console.log(flag);
        return flag;
    }

    function unfollow() {
        var flag = false;
        $.sendConfirm({
            hideHeader: true,
            withCenter: true,
            msg: '确定从好友列表删除${user.username}吗？',
            button: {
                confirm: '确认',
                cancel: '取消'
            },
            onConfirm: function() {
                console.log('点击确认！');
                window.location.replace("http://localhost:9999/df/unfollow.do?uid=${user.uid}");
            },
            onCancel: function() {
                console.log('点击取消！');
                flag = false;
            },
            onClose: function() {
                console.log('点击关闭！');
                flag = false;
            }
        });
        console.log(flag);
        return flag;
    }
</script>
</html>













