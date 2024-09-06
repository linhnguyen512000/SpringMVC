package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Category;

@Repository
public class CategoryDaoImp implements CategoryDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Category category) {
	   sessionFactory.getCurrentSession().save(category);
	}
	
	@Override
	public Category get(int num) {
		return sessionFactory.getCurrentSession().get(Category.class, num);
	}
	
	@Override
	public void update(Category category) {
		sessionFactory.getCurrentSession().update(category);
	}

	@Override
	public List<Category> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Category> query = sessionFactory.getCurrentSession().createQuery("from Category");
	   return query.getResultList();
	}
}
