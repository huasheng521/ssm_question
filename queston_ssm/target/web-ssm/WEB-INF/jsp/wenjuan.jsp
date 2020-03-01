<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2020/2/26
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>问卷页面</title>
</head>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<![endif]-->
<script src="<%=basePath%>js/jquery-1.12.4.js"></script>
<body>
<h1 style="text-align: center">许昌电气青年志愿者协会内部调查问卷</h1>
<p style="text-align: center">
    亲爱的同学，你们好！此次问卷调查是基于了解青协的客观情况以及对相关方面进行改善的切实需求。<br>
    您的见解和意见对于协会未来的发展至关重要，细心阅读各部分的提示语，认真填写问卷，真实地反映您的观点、看法。<br>
    本问卷匿名填写，我们将对问卷严格保密。感谢您的积极参与和支持! <br>
</p>
<hr>
<form class="panel panel-default questionF">
<%--    <div class="panel panel-default">--%>
<%--        <div class="panel-heading">Panel heading without title</div>--%>
<%--        <div class="panel-body">--%>
<%--            Panel content--%>
<%--        </div>--%>
<%--    </div>--%>
    <%
        int i = -1;
    %>
    <c:forEach var="question" items="${questions}" step="1">
        <%
            i ++;
        %>
        <c:if test="${question.type==2}"> <br>
            <div class="panel-heading" style="background: aquamarine">${question.question}</div>
<%--            <c:out value="${question.question}"/><br>--%>
            <div class="panel-body">
                <input type="hidden" name="feedbacks[<%=i%>].question" value="${question.question}">
                <input type="hidden" name="feedbacks[<%=i%>].qu_id" value="${question.q_id}">
                <input type="hidden" name="feedbacks[<%=i%>].q_type" value="${question.type}">
                <input type="checkbox" name="feedbacks[<%=i%>].daan" value="${question.a}"> <c:out value="${question.a}"/> <br>
                <input type="checkbox" name="feedbacks[<%=i%>].daan" value="${question.b}"><c:out value="${question.b}"/><br>
                <input type="checkbox" name="feedbacks[<%=i%>].daan" value="${question.c}"><c:out value="${question.c}"/><br>
                <input type="checkbox" name="feedbacks[<%=i%>].daan" value="${question.d}"> <c:out value="${question.d}"/><br>
            </div>
        </c:if>
        <c:if test="${question.type==1}"><br>
            <div class="panel-heading" style="background: aquamarine">${question.question}</div>
<%--            <c:out value="${question.question}"/> <br>--%>
    <div class="panel-body">
            <input type="hidden" name="feedbacks[<%=i%>].question" value="${question.question}">
            <input type="hidden" name="feedbacks[<%=i%>].qu_id" value="${question.q_id}">
            <input type="hidden" name="feedbacks[<%=i%>].q_type" value="${question.type}">
            <input type="radio" name="feedbacks[<%=i%>].daan"value="${question.a}"><c:out value="${question.a}"/><br>
            <input type="radio" name="feedbacks[<%=i%>].daan"value="${question.b}"><c:out value="${question.b}"/><br>
            <input type="radio" name="feedbacks[<%=i%>].daan"value="${question.c}"><c:out value="${question.c}"/><br>
            <input type="radio" name="feedbacks[<%=i%>].daan"value="${question.d}"><c:out value="${question.d}"/><br>
    </div>
        </c:if>
        <c:if test="${question.type==3}"><br>
<%--            <c:out value="${question.question}"/><br>--%>
            <div class="panel-heading" style="background: aquamarine">${question.question}</div>
            <input type="hidden" name="feedbacks[<%=i%>].question" value="${question.question}">
            <input type="hidden" name="feedbacks[<%=i%>].qu_id" value="${question.q_id}">
            <input type="hidden" name="feedbacks[<%=i%>].q_type" value="${question.type}">
    <div class="panel-body">
            <input type="text" name="feedbacks[<%=i%>].daan"><br>
    </div>
        </c:if>
    </c:forEach>
</form>
<div style="text-align: center">
    <button class="dt_finsh btn btn-primary">提交</button>
    <button class="back_con btn btn-info">返回</button>
</div>

</body>
<script >
    $(function () {
        $(".dt_finsh").click(function () {
            var jg = $(".questionF :input").serialize();
            // var jg1 = $(".questionF").parseForm();
            // var jg = $(".questionF").serializeObject();
            console.log(jg);
            // console.log(jg1);
            $.ajax({
                "url":"question_jg",
                "type":"post",
            // {"feedbacks":JSON.stringify(jg)}
                "data":jg,
                "dataType":"text",
                "success":function(re){
                    if(re=="true"){
                        alert("提交成功");
                    }else {
                        alert("提交失败");
                    }
                },
                "error":function (er) {
                    console.log(er)
                    alert("提交失败")
                }
            })
        })
        $(".back_con").click(function () {
            location.assign("<%=basePath%>controller.jsp")
        })
    })
</script>
</html>
