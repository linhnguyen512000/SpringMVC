package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Orders;
import com.asm3.shoeproject.model.Product;

@Repository
public class OrdersDaoImp implements OrdersDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Orders orders) {
	   sessionFactory.getCurrentSession().save(orders);
	}
	
	@Override
	public Orders get(int num) {
		return sessionFactory.getCurrentSession().get(Orders.class, num);
	}
	
	@Override
	public void update(Orders orders) {
		sessionFactory.getCurrentSession().update(orders);
	}

	@Override
	public List<Orders> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Orders> query = sessionFactory.getCurrentSession().createQuery("from Orders");
	   return query.getResultList();
	}
	
	@Override
	public List<Orders> listAccount(int id) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Orders> query = sessionFactory.getCurrentSession().createQuery("from Orders where user_id = ?1").setParameter(1, id);
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listName(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Orders where consignee like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listTotalAmount(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Orders where totalAmount = ?1")
	  .setParameter(1, value );
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listPaymentMethod(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Orders where paymentMethod like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listPaymentStatus(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Orders where paymentStatus like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listDeliveryStatus(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Orders where deliveryStatus like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
}
