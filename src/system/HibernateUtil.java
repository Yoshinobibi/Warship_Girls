package system;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 95 on 2016/4/5.
 */
public class HibernateUtil {
    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession(){
        Session session = sessionFactory.getCurrentSession();
        return session;
    }
    public Session getNewSession(){
        Session session = sessionFactory.openSession();
        return session;
    }

}
