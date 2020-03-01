package cn.huapei.dao;


import cn.huapei.model.yijian;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("yijianMapper")
public interface yijianMapper {
        public Integer insertyijian(@Param("yijian") yijian yijian);

}
