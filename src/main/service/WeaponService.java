package main.service;

import main.dao.WeaponDao;
import main.entity.WeaponEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.HibernateUtil;

import java.util.List;

/**
 * Created by songshuang on 2016/5/25.
 */
@Service("weaponService")
@Transactional
public class WeaponService extends HibernateUtil implements WeaponDao{

    @Override
    public void doAddSql(WeaponEntity weaponEntity){
        getSession().save(weaponEntity);
    }
    @Override
    public List<WeaponEntity> doQuerySql(){
        String hql = "select weaponEntity from WeaponEntity weaponEntity";
        Query query = getSession().createQuery(hql);
        return query.list();
    }
}
