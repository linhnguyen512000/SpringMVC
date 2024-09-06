package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Size;

@Repository
public class SizeDaoImp implements SizeDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Size size) {
	   sessionFactory.getCurrentSession().save(size);
	}
	
	@Override
	public Size get(int num) {
		return sessionFactory.getCurrentSession().get(Size.class, num);
	}
	
	@Override
	public void update(Size size) {
		sessionFactory.getCurrentSession().update(size);
	}

	@Override
	public List<Size> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Size> query = sessionFactory.getCurrentSession().createQuery("from Size");
	   return query.getResultList();
	}
	
	@Override
	public List<Size> listProduct(int id) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Size> query = sessionFactory.getCurrentSession().createQuery("from Size where product_id = ?1").setParameter(1, id);
	   return query.getResultList();
	}
}
