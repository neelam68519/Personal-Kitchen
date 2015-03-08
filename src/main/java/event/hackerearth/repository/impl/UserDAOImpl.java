package event.hackerearth.repository.impl;

import java.sql.Timestamp;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import event.hackerearth.model.User;
import event.hackerearth.repository.UserDAO;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public void addOrUpdate(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);

    }

    @Transactional
    public User getOrCreateUser(String email, String username) {

        User user = getUser(email);
        if (user == null) {
            user = new User();
            user.setEmail(email);
            user.setName(username);
            user.setDateOfJoining(new Timestamp(System.currentTimeMillis()));
            addOrUpdate(user);
        }
        return user;
    }

    @Transactional
    public User getUser(String email) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(User.class).add(Restrictions.eq("email", email));
        User user = (User) criteria.uniqueResult();

        return user;
    }

}
