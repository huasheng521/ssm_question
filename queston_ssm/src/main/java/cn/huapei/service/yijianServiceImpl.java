package cn.huapei.service;

import cn.huapei.dao.yijianMapper;
import cn.huapei.model.yijian;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("yijianService")
@Transactional
/**
 * 加上注解@Transactional可以指定这个类需要受Spring的事务管理，
 *注意@Transactional只能针对public属性范围内的方法添加，
 *本案例并不需要处理事务，在这里只是告诉读者如何使用事务
 */
public class yijianServiceImpl implements yijianService{
    @Autowired
    private yijianMapper yijianMapper;
    @Override
    public Integer insertyijian(yijian yijian) {

        return yijianMapper.insertyijian(yijian);
    }

}
