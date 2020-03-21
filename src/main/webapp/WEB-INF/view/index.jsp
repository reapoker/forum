<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta charset="utf-8"/>
    <link rel="icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://pszoi7vyf.bkt.clouddn.com/bbs.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="contain">
    <div class="main w clearfix">
        <div class="main-left">
            <div class="share">
                <div class="share-left"><span></span>&nbsp;分享与提问</div>
                <div class="share-right">
                    <a href="toPublish.do"><span class="glyphicon glyphicon-pencil"></span>&nbsp;我要发布</a>
                </div>
            </div>
            <div class="post">
                <div class="post-wrap">
                    <div class="post-choice">
                        <a href="#" class="post-choice-current">最近</a>
                        <a href="#">最热</a>
                        <a href="#" class="post-choice-last">精华</a>
                    </div>

                    <ul class="post-list">
                        <c:forEach items="${pageBean.list}" var="post">
                            <li class="clearfix">
                                <div class="post-image">
                                    <a href="toProfile.do?uid=${post.user.uid}"><img src="${post.user.headUrl}"></a>
                                </div>
                                <div class="post-content">
                                    <div class="post-title"><a href="toPost.do?pid=${post.pid}">${post.title}</a></div>
                                    <div class="post-other">
                                        <div class="post-other-left">
                                            <span class="post-username"><a
                                                    href="toProfile.do?uid=${post.user.uid}">${post.user.username}</a></span>
                                            <span>&nbsp;发表</span>
                                            <span class="post-time">&nbsp;${post.publishTime}</span>
                                            <span>&nbsp;最后回复&nbsp;</span>
                                            <span class="post-reply-time">${post.replyTime}</span>
                                        </div>
                                        <div class="post-other-right">
                                            <span class="post-reply-count">回复 ${post.replyCount}</span>&nbsp;
                                            <span class="post-like-count">赞 ${post.likeCount}</span>&nbsp;
                                            <span class="post-scan-count">浏览 ${post.scanCount}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>

                    </ul>

                    <%--分页导航--%>
                    <nav class="col-md-10 col-md-offset-2">
                        <ul class="pagination pagination-sm">
                            <%--首页--%>
                            <li><a href="listPostByTime.do?curPage=1">首页</a></li>
                            <%--上一页--%>
                            <c:choose>
                                <c:when test="${pageBean.curPage!=1 }">
                                    <li><a href="listPostByTime.do?curPage=${pageBean.curPage-1 }"><span>&laquo;</span></a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><span>&laquo;</span></li>
                                </c:otherwise>
                            </c:choose>
                            <%--中间部分--%>
                            <c:choose>
                                <c:when test="${pageBean.allPage<=10 }">
                                    <c:forEach begin="1" end="${ pageBean.allPage}" var="i">
                                        <li class="pageNum"><a href="listPostByTime.do?curPage=${i }">${i }</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${pageBean.curPage<=5 }">
                                    <c:forEach begin="1" end="10" var="i">
                                        <li class="pageNum"><a href="listPostByTime.do?curPage=${i }">${i }</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${pageBean.allPage-pageBean.curPage<5 }">
                                    <c:forEach begin="${pageBean.allPage-9 }" end="${ pageBean.allPage}" var="i">
                                        <li class="pageNum"><a href="listPostByTime.do?curPage=${i }">${i }</a></li>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach begin="${pageBean.curPage-4 }" end="${ pageBean.curPage+5}" var="i">
                                        <li class="pageNum"><a href="listPostByTime.do?curPage=${i }">${i }</a></li>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                            <%--下一页--%>
                            <c:choose>
                                <c:when test="${pageBean.curPage!=pageBean.allPage }">
                                    <li><a href="listPostByTime.do?curPage=${pageBean.curPage+1 }"><span>&raquo;</span></a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><span>&raquo;</span></li>
                                </c:otherwise>
                            </c:choose>
                            <%--尾页--%>
                            <li><a href="listPostByTime.do?curPage=${pageBean.allPage}">尾页</a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
        <div class="main-right">

            <div class="hot-user">
                <div class="clearfix">
                    <div class="hot-user-title"><span></span>&nbsp;近期活跃用户</div>
                </div>
                <ul class="hot-user-list">
                    <c:forEach items="${hotUserList}" var="user">
                        <li class="clearfix">
                            <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img
                                    src="${user.headUrl}"></a>
                            <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <div class="hot-user">
                <div class="clearfix">
                    <div class="hot-user-title"><span></span>&nbsp;
                        <c:choose>
                            <c:when test="${sessionScope.uid==null || reds ==null}">
                                近期加入的用户
                            </c:when>
                            <c:otherwise>
                                推荐好友
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <ul class="hot-user-list">
                    <c:choose>
                        <c:when test="${sessionScope.uid==null || reds == null}">
                            <c:forEach items="${userList}" var="user">
                                <li class="clearfix">
                                    <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img
                                            src="${user.headUrl}"></a>
                                    <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${reds}" var="user">
                                <li class="clearfix">
                                    <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img
                                            src="${user.headUrl}"></a>
                                    <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                                </li>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </ul>
            </div>

        </div>
    </div>

    <%@ include file="footer.jsp" %>
</div>
<script type="text/javascript">
    $(function () {
        var curPage = ${pageBean.curPage};
        $(".pageNum").each(function () {
            if ($(this).text() == curPage) {
                $(this).addClass("active");
            }
        });
    });

</script>
</body>
</html>
