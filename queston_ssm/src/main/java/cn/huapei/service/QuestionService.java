package cn.huapei.service;

import cn.huapei.model.feedback;
import cn.huapei.model.question;

import java.util.List;

public interface QuestionService {
    //    创建问题列表
    public int inserQuestion( List<question> questions);
    public List<question> getAllQuestions();


    public int  insertFeedback(feedback feedback);



//    输出问卷调查结果
    public List<feedback> jieguoshuchu();



    //通过id 删除问题
    public int delQuestionByid( int id);
}
