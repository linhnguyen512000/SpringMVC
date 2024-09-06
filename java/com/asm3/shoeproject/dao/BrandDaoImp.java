package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Brand;


@Repository
public class BrandDaoImp implements BrandDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Brand brand) {
	   sessionFactory.getCurrentSession().save(brand);
	}
	
	@Override
	public Brand get(int num) {
		return sessionFactory.getCurrentSession().get(Brand.class, num);
	}
	
	@Override
	public void update(Brand brand) {
		sessionFactory.getCurrentSession().update(brand);
	}

	@Override
	public List<Brand> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Brand> query = sessionFactory.getCurrentSession().createQuery("from Brand");
	   return query.getResultList();
	}
}
