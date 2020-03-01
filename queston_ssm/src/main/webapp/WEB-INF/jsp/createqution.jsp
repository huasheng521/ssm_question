<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2020/2/24
  Time: 14:38
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
    <title>调查问卷创建页面</title>
</head>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<![endif]-->
<script src="js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/quesstionnair.css" type="text/css">
<body>
<button class="danxuan">单选</button>
<button class="duoxuan">多选</button>
<button class="tiankong">填空</button>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default danxuan">单选</button>
    </div>
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default duoxuan">多选</button>
    </div>
    <div class="btn-group" role="group">
        <button type="button" class="btn btn-default tiankong">填空</button>
    </div>
</div>
<%--    单选--%>
<form class="danxuanF">
    <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
    <div class="form-group">
        <label >请填写你的问题</label>
        <input type="text" class="form-control " name="question">
    </div>
    <div class="form-group">
        <label>请填写你a答案</label>
        <input type="text" class="form-control"  name="a">
    </div>
    <div class="form-group">
        <label >请填写你b答案</label>
        <input type="text" class="form-control" name="b" >
    </div>
    <div class="form-group">
        <label>请填写你c答案</label>
        <input type="text" class="form-control" name="c">
    </div>
    <div class="form-group">
        <label>请填写你d答案</label>
        <input type="text" class="form-control" name="d">
    </div>
    <a class="btn btn-default dan_finsh">完成</a>
</form>

<%--    多选表--%>
<form class="duoxuanF">
    <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
    <div class="form-group">
        <label >请填写你的问题</label>
        <input type="text" class="form-control " name="question">
    </div>
    <div class="form-group">
        <label>请填写你a答案</label>
        <input type="text" class="form-control"  name="a">
    </div>
    <div class="form-group">
        <label >请填写你b答案</label>
        <input type="text" class="form-control" name="b" >
    </div>
    <div class="form-group">
        <label>请填写你c答案</label>
        <input type="text" class="form-control" name="c">
    </div>
    <div class="form-group">
        <label>请填写你d答案</label>
        <input type="text" class="form-control" name="d">
    </div>
    <a class="btn btn-default duo_finsh">完成</a>
</form>
<%--    填空题--%>
<form class="tiankongF">
    <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
    <div class="form-group">
        <label >请填写你的问题</label>
        <input type="text" class="form-control " required="required" name="question">
        <a class="btn btn-default tian_finsh">完成</a>
    </div>
</form>
<%--    预览列表--%>
<form class="yulanbiao">
    <button type="button" class="btn btn-primary btn-lg btn-block yl_finsh">完成</button>
</form>
</body>
<script>
    $(function () {
        // type:1等于单选  2等于多选 3等于填空
        //声明一个json数组
        var jsonarr=[];
        var json;
        //单选完成
        $(".danxuan").click(function () {
            $(".danxuanF").show();
        })
        var yltimu = new Array();
        //点击单选完成摁钮
        $(".dan_finsh").click(function () {
            // 创建一个json 数据
            json ={"question":$(".danxuanF input[name='question']").val(),
                "a":$(".danxuanF input[name='a']").val(),
                "b":$(".danxuanF input[name='b']").val(),
                "c":$(".danxuanF input[name='c']").val(),
                "d":$(".danxuanF input[name='d']").val(),
                "type":"1"
            };
            // 添加json 数组
            jsonarr.push(json)
            console.log(jsonarr)
            $(".danxuanF input").each(function(){
                yltimu.push($(this).val());//添加至数组
            });
            $(".danxuanF input").val(" ")
            $(".danxuanF").hide();
            $(".yulanbiao").append(
                " <div class='list-group'>" +
                "<a class='list-group-item active' style='background: aqua'>题目："+yltimu[0]+"</a>" +
                "<a class='list-group-item'>A:"+yltimu[1]+"</a>" +
                "<a class='list-group-item'>B:"+yltimu[2]+"</a>" +
                "<a class='list-group-item'>C:"+yltimu[3]+"</a>" +
                "<a class='list-group-item'>D:"+yltimu[4]+"</a>"
            )
        })
        //多选摁钮
        $(".duoxuan").click(function () {
            $(".duoxuanF").show();
        })

        $(".duo_finsh").click(function () {
            // 创建一个json 数据
            json ={"question":$(".duoxuanF input[name='question']").val(),
                "a":$(".duoxuanF input[name='a']").val(),
                "b":$(".duoxuanF input[name='b']").val(),
                "c":$(".duoxuanF input[name='c']").val(),
                "d":$(".duoxuanF input[name='d']").val(),
                "type":"2"
            };
            // 添加json 数组
            jsonarr.push(json)
            $(".duoxuanF input").each(function(){
                yltimu.push($(this).val());//添加至数组
            });

            $(".duoxuanF input").val(" ")
            console.log(yltimu)
            $(".duoxuanF").hide();
            $(".yulanbiao").append(
                " <div class='list-group'>" +
                "<a class='list-group-item active' style='background: aqua'>题目："+yltimu[0]+"</a>" +
                "<a class='list-group-item'>A:"+yltimu[1]+"</a>" +
                "<a class='list-group-item'>B:"+yltimu[2]+"</a>" +
                "<a class='list-group-item'>C:"+yltimu[3]+"</a>" +
                "<a class='list-group-item'>D:"+yltimu[4]+"</a>"
            )
            console.log(jsonarr)
        })

        // 填空
        $(".tiankong").click(function () {
            $(".tiankongF").show();
        })
        $(".tian_finsh").click(function () {
            // 创建一个json 数据
            json ={"question":$(".tiankongF input[name='question']").val(),
                "type":"3"
            };
            jsonarr.push(json)
            // timu = JSON.stringify();
            $(".tiankongF input").each(function(){
                yltimu.push($(this).val());//添加至数组
                $(".yulanbiao").append("<p class='list-group-item active' style='background: aqua'>题目："+$(this).val()+"</p>");
            });
            $(".tiankongF").hide();
            // $(".yulanbiao").append(
            //     "<p>题目："+yltimu[0]+"</p>")
            $(".tiankongF input").val(" ")
            console.log(jsonarr)
        })
        // 关闭摁钮
        $(".guanbi").click(function () {
            $(this).parent("form").hide();
        })
        var aa = JSON.stringify(jsonarr)
        console.log(aa)

        $(".yl_finsh").click(function () {
            var aa = JSON.stringify(jsonarr)
            console.log(aa)
            console.log(aa)
            console.log(aa)
            // ajax 向后端传值
            $.ajax({
                "url":"chuangjian",
                "type":"post",
                "data":{"jsons":aa},
                "dataType":"text",
                "success":function(re){
                    if(re){
                        alert("提交成功");
                        location.assign("<%=basePath%>controller.jsp");
                    }
                },
                "error":function (er) {
                    console.log(er)
                    alert("提交失败")
                }
            })
        })


    })
</script>
</html>
