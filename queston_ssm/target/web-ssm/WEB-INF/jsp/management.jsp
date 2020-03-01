<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2020/2/28
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>问卷管理页面</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="<%=basePath%>js/jquery-1.12.4.js"></script>
<script src="<%=basePath%>js/Web_json.js"></script>
<body>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">编号</th>
        <th scope="col">问题</th>
        <th scope="col">删除</th>
        <th scope="col">修改</th>
    </tr>
    </thead>

    <%int i=0; %>
<c:forEach var="q" items="${allQuestions}">
    <%i++; %>
    <tr>
        <td scope="row" class="q_id">${q.q_id}</td>
        <td><span>${q.question}</span> </td>
        <td><button class="del btn btn-secondary" >删除</button></td>
        <td><button class="xiugai btn btn-info" >修改</button></td>
    </tr>
</c:forEach>
</table>
<div style="text-align: center">
    <button class="back_con btn btn-outline-dark" >返回</button>
</div>

</body>
<script>
    $(function () {
        $(".del").click(function () {
            console.log($(this).parent())
            // var ids = $("form input").serialize();
            var del_q_id = $(this).parent().siblings(":first").text();
            console.log(del_q_id)
            $.ajax({
                "url":"management",
                "type":"get",
                "data":"id="+del_q_id,
                "dataType":"text",
                "success":function(re){
                    if(re=="true"){
                        alert("删除成功");
                        location.reload();
                    }else {
                        alert("删除失败")
                    }
                },
                "error":function (er) {
                    console.log(er)
                    alert("删除失败")
                }
            })
        })
        $(".back_con").click(function () {
            history.back();
        })
    })
</script>
</html>
