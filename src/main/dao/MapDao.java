package main.dao;

import main.entity.MapEntity;

import java.util.List;

/**
 * Created by songshuang on 2016/5/25.
 */
public interface MapDao {
    public void doAddSql(MapEntity mapEntity);
    public List<MapEntity> doQuerySql();
}
