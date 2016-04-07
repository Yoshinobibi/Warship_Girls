package main.service;

import main.dao.UserDao;
import main.entity.UserEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.HibernateUtil;

/**
 * Created by 95 on 2016/4/2.
 */

@Service("userService")
@Transactional
public class UserService extends HibernateUtil implements UserDao{

    @Override
    public void addUser(UserEntity userEntity){

        getSession().save(userEntity);
//        getSession().close();
    }
}
