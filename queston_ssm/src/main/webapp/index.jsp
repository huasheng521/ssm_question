<%--
  Created by IntelliJ IDEA.
  User: 99573
  Date: 2019/12/11
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>院青年志愿者调查问卷</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .box{
            widows: 100;
            width: 720px;
            height: 100%;
            border: 1px blue solid;
            margin: 0px auto;
        }
        h1{
            color:gray;
            text-align: center;
        }
        .a{
            width:200px;
            height:35px;
            background:green;
            margin-left: 39%;
        }
        input{
            margin: 5px;
        }
    </style>
</head>
<script src="js/jquery-1.12.4.js"></script>
<body>
<div class="box">
    <h1>许昌电气青年志愿者协会内部调查问卷</h1>
    <p>
        亲爱的同学，你们好！此次问卷调查是基于了解青协的客观情况以及对相关方面进行改善的切实需求。<br>
        您的见解和意见对于协会未来的发展至关重要，细心阅读各部分的提示语，认真填写问卷，真实地反映您的观点、看法。<br>
        本问卷匿名填写，我们将对问卷严格保密。感谢您的积极参与和支持! <br>
    </p>
    <hr>
    <form>
        1. 请问您在校青协身份是？<br>
        <input type="radio" name="a" value="干事或部长">	干事或部长
        <br>
        <input type="radio" name="a" value="会员">	会员
        <br>
        2.您进入青协至今多长时间？<br>
        <input type="text" name="b">
        <br>

        3. 您认为志愿者活动带给您最大的收获是<br>
        <input type="radio" name="c" value="结交新朋友，拓宽人际交往范围">结交新朋友，拓宽人际交往范围<br>
        <input type="radio" name="c" value="提高自身综合能力">提高自身综合能力<br>
        <input type="radio" name="c" value="服务大众，帮助需要帮助的人">服务大众，帮助需要帮助的人<br>
        <input type="radio" name="c" value="丰富课余生活，增加阅历">丰富课余生活，增加阅历<br>
        <br>
        4. 您认为志愿者活动以什么样的形式通知大家最合适<br>
        <input type="radio" name="d" value="海报">海报<br>
        <input type="radio" name="d" value="短信和电话">短信和电话<br>
        <input type="radio" name="d" value="群信息">群信息<br>
        <input type="radio" name="d" value="到班通知">到班通知<br>
        <input type="radio" name="d" value="其他----">其他----<br>
        5. 如果参加志愿者活动时有阻碍，您认为主要因素是什么	<br>
        <input type="radio" name="e" value="时间因素">时间因素<br>
        <input type="radio" name="e" value="与其他活动冲突">与其他活动冲突<br>
        <input type="radio" name="e" value="活动本身的因素">活动本身的因素<br>
        <input type="radio" name="e" value="其他">其他<br>
        6. 青协的工作是否影响到您的学习？	<br>
        <input type="radio" name="f" value="毫无影响，工作与学习可以很好的兼顾">A.毫无影响，工作与学习可以很好的兼顾	<br>
        <input type="radio" name="f" value="有影响，但影响不大，可以忽略不计">B.有影响，但影响不大，可以忽略不计<br>
        <input type="radio" name="f" value="有较大影响，学习质量急速下降">C.有较大影响，学习质量急速下降<br>
        7. 在众多的活动中，您最支持哪一项活动？<br>
        <input type="radio" name="g" value="图书馆活动">图书馆活动<br>
        <input type="radio" name="g" value="科技馆活动">科技馆活动<br>
        <input type="radio" name="g" value="学院大扫除">学院大扫除<br>
        <input type="radio" name="g" value="其他">其他<br>
        8. 您对协会活动费用是否了解？<br>
        <input type="radio" name="h" value="很了解，协会经费使用情况定期公布">A.很了解，协会经费使用情况定期公布<br>
        <input type="radio" name="h" value="了解部分，只了解自己参加或经手的部分">B.了解部分，只了解自己参加或经手的部分<br>
        <input type="radio" name="h" value="了解很少，大部分是听别人说的">C.了解很少，大部分是听别人说的<br>
        <input type="radio" name="h" value="根本不知道">D.根本不知道<br>
        9. 您认为青协存在哪些问题？<br>
        <input type="checkbox" name="i" value="志愿者参与不足">A．志愿者参与不足<br>
        <input type="checkbox" name="i" value="活动过于形式化">B.活动过于形式化<br>
        <input type="checkbox" name="i" value="负责人组织不给力">C.负责人组织不给力<br>
        <input type="checkbox" name="i" value="规章制度不完善">D.规章制度不完善<br>
        <input type="checkbox" name="i" value="活动单调而缺乏特色">E.活动单调而缺乏特色<br>
        <input type="checkbox" name="i" value="活动时间间隔太久">F.活动时间间隔太久	<br>
        10. 您所在的部门大概多久开一次会议？<br>
        <input type="radio" name="j" value="每周一次">A.每周一次<br>
        <input type="radio" name="j" value="二周一次">B.二周一次<br>
        <input type="radio" name="j" value="不定期开会">C. 不定期开会<br>
        <input type="radio" name="j" value="每月一次">D.每月一次<br>

        11. 您觉得本协会开会一个月一次大例会合理吗？<br>
        <input type="radio" name="l" value="非常合理">A. 非常合理<br>
        <input type="radio" name="l" value="较为合理">B.较为合理<br>
        <input type="radio" name="l" value="不太合理">C.不太合理<br>
        <input type="radio" name="l" value="非常不合理">D.非常不合理	<br>
        12. 部门之间是否存在沟通问题造成工作冲突？<br>
        <input type="radio" name="m" value="沟通密切，分工明确">A.沟通密切，分工明确<br>
        <input type="radio" name="m" value="保持一定沟通，保证工作顺利进行">B.保持一定沟通，保证工作顺利进行<br>
        <input type="radio" name="m" value="较少沟通，分工不明确，工作中矛盾突出">C.较少沟通，分工不明确，工作中矛盾突出<br>
        <input type="radio" name="m" value="极少沟通，各部门各持义见，工作进展困难重重">D.极少沟通，各部门各持义见，工作进展困难重重<br>

        13. 您觉得什么方式能较好的增加部门成员亲密值？<br>
        <input type="radio" name="n" value="与其他社团联谊">A.与其他社团联谊<br>
        <input type="radio" name="n" value="多于其他部门的同学交流">B.多于其他部门的同学交流<br>
        <input type="radio" name="n" value="增加与部门合作">C.增加与部门合作<br>
        <input type="radio" name="n" value="其他">D.其他<br>
        14. 你认为青协里的哪一个部门工作目前做的比较好的？<br>
        <input type="radio" name="o" value="组织部">A.组织部<br>
        <input type="radio" name="o" value="办公室">B.办公室<br>
        <input type="radio" name="o" value="文娱部">C.文娱部<br>
        <input type="radio" name="o" value="网宣部">D.网宣部<br>
        15. 您觉得青协的管理如何？<br>
        <input type="radio" name="p" value="很好">A.很好<br>
        <input type="radio" name="p" value="还行">B.还行<br>
        <input type="radio" name="p" value="一般">C.一般<br>
        16. 对自己在工作中能力是否满意？<br>
        <input type="radio" name="q" value="很满意">A.很满意<br>
        <input type="radio" name="q" value="还可以">B.还可以<br>
        <input type="radio" name="q" value="一般">C.一般<br>
        <input type="radio" name="q" value="不满意">D.不满意<br>
        17. 您认为以下什么方式对提高自身领导者能力？<br>
        <input type="radio" name="r" value="通过勤练口才">A.通过勤练口才<br>
        <input type="radio" name="r" value="通过多工作，累积经验">B.通过多工作，累积经验<br>
        <input type="radio" name="r" value="虚心向别人学习">C.虚心向别人学习<br>
        <input type="radio" name="r" value="其他">D.其他<br>
        18. 您认为校青协开展活动的着重点应该是<br>
        <input type="checkbox" name ="t" value="锻炼、培养大学生的各方面能力">锻炼、培养大学生的各方面能力<br>
        <input type="checkbox" name ="t" value="活跃学生的大学生活">活跃学生的大学生活<br>
        <input type="checkbox" name ="t" value="联系实际，关注社会焦点">联系实际，关注社会焦点<br>
        <input type="checkbox" name ="t" value="吸引更多的学生参与到社团活动中来">吸引更多的学生参与到社团活动中来<br>
        19. 您有没有试过逃课去参加社团内的活动<br>

        <input type="radio" name="u" value="通过勤练口才">A.没有<br>
        <input type="radio" name="u" value="通过多工作，累积经验">B.有<br>

        20. 您如何看待目前部门的凝聚力<br>
        <input type="checkbox" name ="v" value="平时能和部门成员一块聊聊天，凝聚力较强">平时能和部门成员一块聊聊天，凝聚力较强<br>
        <input type="checkbox" name ="v" value="偶尔会和部门成员说说话，但仅限于工作">偶尔会和部门成员说说话，但仅限于工作<br>
        <input type="checkbox" name ="v" value="很多人都不认识，平时没有交集，工作很散漫">很多人都不认识，平时没有交集，工作很散漫<br>
        <input type="checkbox" name ="v" value="在青协有自己的朋友圈，有事时一呼百应，可以很好地工作">在青协有自己的朋友圈，有事时一呼百应，可以很好地工作<br>

        21. 您对校青协内部管理的评价如何?对青协内部管理有没有什么建议?<br>
        <textarea rows="6" cols="5" style="width: 700px; height: 200px;" name="w">


		</textarea>
        <input type="button" class="a" value="提交">
    </form>

</div>
<script type="text/javascript">
    $(function() {
        $(".a").click(function() {
            var jsons = $("form").children().serialize();
// 				jsons = encodeURI(encodeURI(jsons))
            console.log(jsons)
            $.ajax({
                "url":"question",
                // "contentType": 'text/json,charset=utf-8',
                "type":"post",
                "data":jsons,
                "dataType":"text",
                "success":function(re){
                    if(re){
                        alert("提交成功");
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

</body>
</html>
