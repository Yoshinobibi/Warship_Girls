package main.dao;

import main.entity.WarshipEntity;

import java.util.List;

/**
 * Created by Administrator on 2016/4/18.
 */
public interface WarshipDao {
    public void doAddSql(WarshipEntity warshipEntity);
    public List<WarshipEntity> doQuerySql();
}
