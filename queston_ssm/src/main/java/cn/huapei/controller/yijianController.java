package cn.huapei.controller;

import cn.huapei.dao.yijianMapper;
import cn.huapei.model.yijian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class yijianController {
    @Autowired
    private yijianMapper mapper;
    @RequestMapping(value = "/question")
    @ResponseBody
    public String question(yijian yj, HttpServletRequest request){
        Integer insertyijian = mapper.insertyijian(yj);
        if(insertyijian>0){
            return "true";
        }else {
            return "false";
        }
    }

}