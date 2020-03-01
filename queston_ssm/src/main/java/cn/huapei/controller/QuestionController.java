package cn.huapei.controller;

import cn.huapei.model.feedback;
import cn.huapei.model.question;
import cn.huapei.service.QuestionService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class QuestionController {
    //    @Autowired
    @Resource
    private QuestionService questionService;

    @RequestMapping("/chuangjian")
    @ResponseBody
    public String inserQuestion(String jsons, HttpServletRequest request) {
        System.out.println(jsons);
        Gson gson = new GsonBuilder().create();
        List<question> list = gson.fromJson(jsons, new TypeToken<ArrayList<question>>() {
        }.getType());
        System.out.println("---->listJsonStr convert List " + list);
        int i = questionService.inserQuestion(list);
        System.out.println(i);
        if (i > 0) {
            return "true";
        } else {
            return "false";
        }

    }


    @RequestMapping("/getQuestion")
    public String getAllQuestions(Model model) {
        List<question> allQuestions = questionService.getAllQuestions();
        System.out.println("所有的问题列表——---------》" + allQuestions);
        model.addAttribute("questions", allQuestions);
        return "wenjuan";
    }


    @RequestMapping("/question_jg")
    @ResponseBody
    public String feedbacks(feedback feedback) {
        System.out.println("返回集合》》》》" + feedback);
        List<feedback> feedbacks = feedback.getFeedbacks();
        System.out.println("反馈》》》》》》" + feedbacks);
        int i = 0;
        for (feedback f : feedbacks) {
            System.out.println(f);
            i = questionService.insertFeedback(f);
        }
        System.out.println(i);
        if (i > 0) {
            return "true";
        } else {
            return "false";
        }
    }


    @RequestMapping("/Results_page")
    public String Results(Model model) {
        List<feedback> feedbackList = questionService.jieguoshuchu();
        List<question> allQuestions = questionService.getAllQuestions();
        model.addAttribute("feedbackList", feedbackList);
        model.addAttribute("allQuestions", allQuestions);
        return "list";
    }


    //跳转问题页面。。。。
    @RequestMapping("createqu")
    public String create() {
        return "createqution";
    }

    //跳转管理页面
    @RequestMapping("/managementpage")
    public String managementPage(Model model) {
        List<question> allQuestions = questionService.getAllQuestions();
        model.addAttribute("allQuestions", allQuestions);
        return "management";
    }


    //管理问题
    @RequestMapping("/management")
    @ResponseBody
    public String Wjmanagement(@RequestParam(value = "id",required = false) String id) {
        Integer del_Id = Integer.parseInt(id);
        System.out.println(del_Id);
        int i = questionService.delQuestionByid(del_Id);
        System.out.println(i);
        if (i > 0) {
            return "true";
        } else {
            return "false";
        }
    }
}
