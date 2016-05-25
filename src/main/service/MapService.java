package main.service;

import main.dao.MapDao;
import main.entity.MapEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.HibernateUtil;

import java.util.List;

/**
 * Created by songshuang on 2016/5/25.
 */
@Service("mapService")
@Transactional
public class MapService extends HibernateUtil implements MapDao{
    @Override
    public void doAddSql(MapEntity mapEntity){
        getSession().save(mapEntity);
    }
    @Override
    public List<MapEntity> doQuerySql(){
        String hql = "select mapEntity from MapEntity mapEntity";
        Query query = getSession().createQuery(hql);
        return query.list();
    }
}
