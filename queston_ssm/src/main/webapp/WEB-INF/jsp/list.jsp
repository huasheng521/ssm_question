<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2020/2/22
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <title>Title</title>
</head>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<![endif]-->
<body>
<c:forEach var="question" items="${allQuestions}" step="1">
    <c:if test="${question.type==2}"> <br>
<%--        <c:out value="${question.question}"/><br>--%>
        <p  class="list-group-item active">
                ${question.question}
        </p>
        <c:forEach var="feedbackList" items="${feedbackList}">
            <c:if test="${feedbackList.qu_id == question.q_id}">
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="badge">${feedbackList.num_daan}</span>
                            ${feedbackList.daan}
                    </li>
                </ul>
<%--                <c:out value="${feedbackList.daan}"/>--%>
<%--                <c:out value="${feedbackList.num_daan}"/> <br>--%>
            </c:if>
        </c:forEach>
    </c:if>
    <c:if test="${question.type==1}"> <br>
<%--        <c:out value="${question.question}"/><br>--%>
        <p  class="list-group-item active">
                ${question.question}
        </p>
        <c:forEach var="feedbackList" items="${feedbackList}">
            <c:if test="${feedbackList.qu_id == question.q_id}">
<%--                <c:out value="${feedbackList.daan}"/>--%>
<%--                <c:out value="${feedbackList.num_daan}"/> <br>--%>
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="badge">${feedbackList.num_daan}</span>
                            ${feedbackList.daan}
                    </li>
                </ul>
            </c:if>
        </c:forEach>
    </c:if>
    <c:if test="${question.type==3}"> <br>
<%--        <c:out value="${question.question}"/><br>--%>
        <p  class="list-group-item active">
                ${question.question}
        </p>
        <c:forEach var="feedbackList" items="${feedbackList}">
            <c:if test="${feedbackList.qu_id == question.q_id}">
                <ul class="list-group">
                    <li class="list-group-item">
                            ${feedbackList.daan}
                    </li>
                </ul>
            </c:if>
        </c:forEach>
    </c:if>
</c:forEach>
<br>
<button class="btn btn-primary btn-lg btn-block">返回</button>
</body>
<script>
    window.onload=function () {
      var btu =  document.querySelector("button");
      btu.addEventListener("click", function () {
          history.back();
      })
    }
</script>
</html>
