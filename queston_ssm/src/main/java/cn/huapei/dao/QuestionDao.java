package cn.huapei.dao;

import cn.huapei.model.feedback;
import cn.huapei.model.question;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("QuestionDao")
public interface QuestionDao {
    //    创建问题列表
    public int inserQuestion(@Param("questions") question questions);
    public List<question> getAllQuestions();

    public int  insertFeedback(@Param("feedback") feedback feedback);

    public List<feedback> getAllFeedback();
    public int updateNum(@Param("daan") String daan);


    //通过id 删除问题
    public int delQuestionByid(@Param("id") int id);
    //通过问题id 删除反馈
    public int delFeedbackByid(@Param("id") int id);
}
