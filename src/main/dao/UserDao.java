package main.dao;

import main.entity.UserEntity;

import java.util.List;


/**
 * Created by 95 on 2016/4/2.
 */
public interface UserDao {
    public void doAddSql(UserEntity userEntity);
    public List<UserEntity> doQuerySql(String s);
    public void doUpdateSql(UserEntity userEntity);
}
