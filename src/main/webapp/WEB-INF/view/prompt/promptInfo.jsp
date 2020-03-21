<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>
    <meta charset="utf-8"/>
    <link rel="icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/wangEditor.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
    <style type="text/css">
        .main div {
            margin: 200px auto;
            width: 600px;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="contain">
    <%@ include file="../header.jsp" %>


    <!-- 中间主体板块 -->
    <div class="main w clearfix">
        <div>
            ${info}
        </div>
    </div><!-- 主体结束 -->


    <%@ include file="../footer.jsp" %>
</div>
</body>
</html>













