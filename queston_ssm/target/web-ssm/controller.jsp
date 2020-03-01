<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2020/2/27
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
    <title>中心控制页面</title>
</head>
<script src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<![endif]-->
<body>
<div class="page-header">
    <h1>你好，世界！ <small>欢迎来到我的调查问卷系统。</small></h1>
</div>

<div class="btn-group btn-group-justified" role="group" aria-label="...">
    <div class="btn-group " role="group">
        <button type="button" class="btn btn-default createqutions">创建</button>
    </div>
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default wenjuan" >问卷</button>
    </div>
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default jieguo">结果查询</button>
    </div>
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default guanli">问卷管理</button>
    </div>
</div>
<%--<button class="chuangjian">创建</button>--%>
<%--<button class="createqutions">创建2</button>--%>
<%--<button class="wenjuan">问卷 </button>--%>
<%--<button class="jieguo">结果查询</button>--%>
</body>
<script>
    $(function () {
        $(".wenjuan").click(function () {
            location.assign("getQuestion")
        })
        $(".jieguo").click(function () {
            location.assign("Results_page")
        })
        $(".chuangjian").click(function () {
            location.assign("createqu")
        })
        $(".createqutions").click(function () {
            location.assign("createqu")
        })
        $(".guanli").click(function () {
            location.assign("managementpage")
        })
    })
</script>
</html>
