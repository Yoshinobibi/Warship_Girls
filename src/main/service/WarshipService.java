package main.service;

import main.dao.WarshipDao;
import main.entity.WarshipEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.HibernateUtil;

import java.util.List;
/**
 * Created by Administrator on 2016/4/18.
 */
@Service("warshipService")
@Transactional
public class WarshipService extends HibernateUtil implements WarshipDao {

    @Override
    public void doAddSql(WarshipEntity warshipEntity){
        getSession().save(warshipEntity);
    }
    @Override
    public List<WarshipEntity> doQuerySql(String order,String way){
        String hql = "select warshipEntity from WarshipEntity warshipEntity order by "+ order + " " + way;
        Query query = getSession().createQuery(hql);
        return query.list();
    }
}
