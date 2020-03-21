﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>编辑个人信息</title>
    <meta charset="utf-8"/>
    <link rel="icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/wangEditor.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/editProfile.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
</head>
<body>
<div class="contain">
    <%@ include file="header.jsp" %>


    <!-- 中间主体板块 -->
    <div class="main w clearfix">
        <div class="edit-header"><span></span>&nbsp;编辑信息</div>
        <form action="editProfile.do" method="post">
            <div class="edit-title">
                <input type="hidden" name="uid" value="${user.uid}">
                用户名：<input type="text" name="username" value="${user.username}">
            </div>
            <div class="edit-title">
                签&nbsp;&nbsp;&nbsp;名：<input type="text" name="description" value="${user.description}">
            </div>
            <div class="edit-title">
                位&nbsp;&nbsp;&nbsp;置：<input type="text" name="position" value="${user.description}">
            </div>
            <div class="edit-title">
                学&nbsp;&nbsp;&nbsp;校：<input type="text" name="school" value="${user.school}">
            </div>
            <div class="edit-title">
                工&nbsp;&nbsp;&nbsp;作：<input type="text" name="job" value="${user.job}">
            </div>
            <div class="relative">
                <button class="edit-submit">确认编辑</button>
            </div>
        </form>

        <div style="margin-top: 60px;"></div>
        <div class="edit-header"><span></span>&nbsp;修改密码</div>
        <form action="updatePassword.do" method="post">
            <div class="edit-title">
                <div class="text-danger">${passwordError}</div>
                原密码：<input type="password" name="password">
            </div>
            <div class="edit-title">
                新密码：<input type="password" name="newpassword">
            </div>
            <div class="edit-title">
                确&nbsp;&nbsp;&nbsp;认：<input type="password" name="repassword">
            </div>
            <div class="relative">
                <button class="edit-submit">确认修改</button>
            </div>
        </form>

        <div style="margin-top: 60px;"></div>
        <div class="edit-header"><span></span>&nbsp;更换头像</div>
        <form action="updateHeadUrl.do" method="post" enctype="multipart/form-data">
            <div class="edit-title">
                <span class="text-danger">${error3}</span>
                <input type="file" name="myFileName">
            </div>
            <div class="relative">
                <button class="edit-submit">确认更新</button>
            </div>
        </form>

    </div><!-- 主体结束 -->


    <%@ include file="footer.jsp" %>
</div>
</body>
</html>













