package main.dao;

import main.entity.WeaponEntity;

import java.util.List;

/**
 * Created by songshuang on 2016/5/25.
 */
public interface WeaponDao {
    public void doAddSql(WeaponEntity weaponEntity);
    public List<WeaponEntity> doQuerySql();
}
