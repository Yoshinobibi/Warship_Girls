package main.service;

import main.dao.UserDao;
import main.entity.UserEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.HibernateUtil;

import java.util.List;

/**
 * Created by 95 on 2016/4/2.
 */

@Service("userService")
@Transactional
public class UserService extends HibernateUtil implements UserDao{

    @Override
    public void doAddSql(UserEntity userEntity){
        getSession().save(userEntity);
    }

    @Override
    public List<UserEntity> doQuerySql(String s){
        String hql = "select userEntity from UserEntity userEntity where username = '"+s+"'";
        Query query = getSession().createQuery(hql);
        return query.list();
    }

    @Override
    public void doUpdateSql(UserEntity userEntity){

    }
}
