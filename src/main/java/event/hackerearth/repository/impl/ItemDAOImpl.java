package event.hackerearth.repository.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import event.hackerearth.model.Item;
import event.hackerearth.repository.ItemDAO;

@Repository
public class ItemDAOImpl implements ItemDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /**
     * Get List of all items
     * 
     * @return list of items
     */
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Item> getAllItems() {
        Session session = sessionFactory.getCurrentSession();
        return session.createCriteria(Item.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public List<Item> getAllItems(String cityInfo, String localityInfo) {
        if(cityInfo == null || localityInfo == null){
            return getAllItems();
        }

        System.out.println(cityInfo + localityInfo);
        Session session = sessionFactory.getCurrentSession();
        Criteria itemCr = session.createCriteria(Item.class);
        Criterion validItem = Restrictions.gt("validTill", new Timestamp(System.currentTimeMillis()));
        itemCr.add(validItem);
        Criteria cr = itemCr.createCriteria("address");
        Criterion locality = Restrictions.eq("locality", localityInfo);
        Criterion city = Restrictions.eq("city", cityInfo);
        LogicalExpression conjuction = Restrictions.and(locality, city);

        cr.add(conjuction);
        // cr.addOrder(Order.asc("validTill"));
        return cr.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
    }

    /**
     * Add or update a item into db
     * 
     * @param item
     *            item to add or update.
     */
    @Transactional
    public void addOrUpdate(Item item) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(item);
    }

    @Transactional
    public Item getItem(String itemId) {
        Integer intItemId = new Integer(itemId);
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Item.class).add(Restrictions.eq("id", intItemId));
        Item item = (Item)criteria.uniqueResult();
        return item;
    }

}
