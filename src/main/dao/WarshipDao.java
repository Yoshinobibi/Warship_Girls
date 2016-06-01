package main.dao;

import main.entity.WarshipEntity;

import java.util.List;

/**
 * Created by Administrator on 2016/4/18.
 */
public interface WarshipDao {
    public void doCreateSql(WarshipEntity warshipEntity);
//    public void doUpdateSql(WarshipEntity warshipEntity);
    public List<WarshipEntity> doQuerySql(String order,String way);
    public List<WarshipEntity> doQuerySql(int id);
}
