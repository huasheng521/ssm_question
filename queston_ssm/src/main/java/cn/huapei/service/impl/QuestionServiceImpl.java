package cn.huapei.service.impl;

import cn.huapei.dao.QuestionDao;
import cn.huapei.model.feedback;
import cn.huapei.model.question;
import cn.huapei.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service("QuestionService")
@Transactional
public class QuestionServiceImpl implements QuestionService {
    @Autowired
    private QuestionDao questionDao ;
    public int inserQuestion(List<question> questions) {
            int i = 0;
            try{
                for (question q:questions) {
                    i+=questionDao.inserQuestion(q);
                }
            }catch (Exception ex){
                System.out.println(ex);
            }
        System.out.println("Service"+i);
        return i;
    }

    public List<question> getAllQuestions() {
        return questionDao.getAllQuestions();
    }

    public int insertFeedback(feedback feedback)  {
        int i = 0;
        int s = 0;
        try{
            if (feedback.getQ_type()==1||feedback.getQ_type()==2){
                String daan = feedback.getDaan();
                i += questionDao.updateNum(daan);
                System.out.println("更新》》》》"+i+"条数据");
            }
            s  = questionDao.insertFeedback(feedback);
            System.out.println("添加》》》》"+s+"条数据");
        }catch (Exception ex){
            System.err.println(ex);
        }
        if(s==0){
            return i;
        }else {
            return s;
        }

    }

    @Override
    public List<feedback> jieguoshuchu() {
        return  questionDao.getAllFeedback();
    }

    @Override
    public int delQuestionByid(int id) {
        int i= 0;
        try{
            List<feedback> allFeedback = questionDao.getAllFeedback();
            for (feedback f : allFeedback){
                if(f.getQu_id() == id){
                  questionDao.delFeedbackByid(id);
                  break;
                }
            }
            i = questionDao.delQuestionByid(id);
            System.out.println("service"+i);
        }catch (Exception ex){
            System.err.println(ex);
        }
        return i;
    }


}
