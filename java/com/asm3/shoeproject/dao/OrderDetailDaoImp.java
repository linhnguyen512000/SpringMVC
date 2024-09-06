package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.OrderDetail;

@Repository
public class OrderDetailDaoImp implements OrderDetailDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(OrderDetail orderDetail) {
	   sessionFactory.getCurrentSession().save(orderDetail);
	}
	
	@Override
	public OrderDetail get(int num) {
		return sessionFactory.getCurrentSession().get(OrderDetail.class, num);
	}
	
	@Override
	public void update(OrderDetail orderDetail) {
		sessionFactory.getCurrentSession().update(orderDetail);
	}
	
	@Override
	public void delete(int num) {
		OrderDetail od = get(num);
		sessionFactory.getCurrentSession().delete(od);
	}

	@Override
	public List<OrderDetail> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<OrderDetail> query = sessionFactory.getCurrentSession().createQuery("from OrderDetail");
	   return query.getResultList();
	}
	
	@Override
	public List<OrderDetail> listOrder(int num) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<OrderDetail> query = sessionFactory.getCurrentSession().createQuery("from OrderDetail where orders_id = ?1").setParameter(1, num);
	   return query.getResultList();
	}
}
