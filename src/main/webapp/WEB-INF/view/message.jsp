<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>消息通知</title>
    <meta charset="utf-8"/>
    <link rel="icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/wangEditor.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/message.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="contain">
    <!-- 中间主体板块 -->
    <div class="main w clearfix" style="margin-bottom: 360px">
        <div class="message-header"><span></span>&nbsp;消息列表</div>
        <c:forEach items="${map}" var="item">
            <div class="m-wrap">
                <div class="m-date">${item.key}</div>
                <ul class="m-list">
                    <c:forEach items="${item.value}" var="m">
                        <c:choose>
                            <c:when test="${m.postId==null}">
                                <li>${m.operation},&nbsp;<a href="followed.do?uid=${m.otherId}&name=${m.otherUsername}"><span>确定
                                </span></a>&nbsp;或&nbsp;<a href="refuse.do?uid=${m.uid}"><span>拒绝
                                </span></a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="toProfile.do?uid=${m.otherId}"><span>${m.otherUsername}</span></a>${m.operation}<a
                                        href="toPost.do?pid=${m.postId}"><span>${m.displayedContent}</span></a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
            </div>
        </c:forEach>
    </div><!-- 主体结束 -->


    <%@ include file="footer.jsp" %>
</div>
</body>
</html>



