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
<head>
    <title>调查问卷创建页面</title>
</head>
<script src="js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="css/quesstionnair.css" type="text/css">
<body>
    <button class="danxuan">单选</button>
    <button class="duoxuan">多选</button>
    <button class="tiankong">填空</button>


<%--    单选--%>
        <form   class="danxuanF">
            <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
            <p>请填写你的问题</p>
            <input type="text" name="question" >
            <p>填写你a答案</p>
            <input type="text" name="a">
            <p>填写你b答案</p>
            <input type="text" name="b">
            <p>填写你c答案</p>
            <input type="text" name="c">
            <p>填写你d答案</p>
            <input type="text" name="d">
            <a class="dan_finsh">完成</a>
        </form>
<%--    多选表--%>
        <form  class="duoxuanF">
            <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
            <p>请填写你的问题</p>
            <input type="text" name="question" >
            <p>填写你a答案</p>
            <input type="text" name="a">
            <p>填写你b答案</p>
            <input type="text" name="b">
            <p>填写你c答案</p>
            <input type="text" name="c">
            <p>填写你d答案</p>
            <input type="text" name="d">
            <a class="duo_finsh">完成</a>
        </form>
<%--    填空题--%>
        <form class="tiankongF">
            <p style="text-align: right; font-size: 35px;" class="guanbi">×</p>
            <p>请填写你的问题</p>
            <input type="text" name="question">
            <a class="tian_finsh">完成</a>
        </form>
<%--    预览列表--%>
        <form class="yulanbiao">

            <a class="yl_finsh">完成</a>
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
                 // timu = JSON.stringify();

                $(".danxuanF input").each(function(){
                    yltimu.push($(this).val());//添加至数组
                    $(".yulanbiao").append("<p>题目："+$(this).val()+"</p>");
                });

                $(".danxuanF input").val(" ")
                $(".danxuanF").hide();
                // $(".yulanbiao").append(
                //     "<p>题目："+yltimu[0]+"</p>" +
                //     "<p'>A:"+yltimu[1]+"</p>" +
                //     "<p>B:"+yltimu[2]+"</p>" +
                //     "<p>C:"+yltimu[3]+"</p>" +
                //     "<p>D:"+yltimu[4]+"</p>"
                // )
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
                // timu = JSON.stringify();
                $(".duoxuanF input").each(function(){
                    yltimu.push($(this).val());//添加至数组
                    $(".yulanbiao").append("<p>题目："+$(this).val()+"</p>");
                });

                $(".duoxuanF input").val(" ")
                console.log(yltimu)
                $(".duoxuanF").hide();
                // $(".yulanbiao").append(
                //     "<p>题目："+yltimu[0]+"</p>" +
                //     "<p'>A:"+yltimu[1]+"</p>" +
                //     "<p>B:"+yltimu[2]+"</p>" +
                //     "<p>C:"+yltimu[3]+"</p>" +
                //     "<p>D:"+yltimu[4]+"</p>"
                // )
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
                    $(".yulanbiao").append("<p>题目："+$(this).val()+"</p>");
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
                    // "dataType":"json",
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
