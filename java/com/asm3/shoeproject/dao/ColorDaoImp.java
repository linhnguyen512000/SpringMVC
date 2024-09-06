package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Color;

@Repository
public class ColorDaoImp implements ColorDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Color color) {
	   sessionFactory.getCurrentSession().save(color);
	}
	
	@Override
	public Color get(int num) {
		return sessionFactory.getCurrentSession().get(Color.class, num);
	}
	
	@Override
	public void update(Color color) {
		sessionFactory.getCurrentSession().update(color);
	}

	@Override
	public List<Color> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Color> query = sessionFactory.getCurrentSession().createQuery("from Color");
	   return query.getResultList();
	}
	
	@Override
	public List<Color> listProduct(int id) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Color> query = sessionFactory.getCurrentSession().createQuery("from Color where product_id = ?1").setParameter(1, id);
	   return query.getResultList();
	}
}
