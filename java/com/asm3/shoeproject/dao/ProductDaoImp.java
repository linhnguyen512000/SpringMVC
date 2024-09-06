package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.Product;

@Repository
public class ProductDaoImp implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Product product) {
	   sessionFactory.getCurrentSession().save(product);
	}
	
	@Override
	public Product get(int num) {
		return sessionFactory.getCurrentSession().get(Product.class, num);
	}
	
	@Override
	public void update(Product product) {
		sessionFactory.getCurrentSession().update(product);
	}
	
	@Override
	public void delete(Product product) {
		sessionFactory.getCurrentSession().delete(product);
	}

	@Override
	public List<Product> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> list8() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where status = ?1")
	   .setMaxResults(8).setParameter(1, "Đang bán");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listAll() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where status = 'Đang bán'");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listMul(String s) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery(s);
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listSearch1(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where name like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listName(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where name like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listVersionName(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where versionName like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listPrice(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where price like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
	
	@Override
	public List<Product> listStatus(String value) {
	   @SuppressWarnings("unchecked")
	   TypedQuery<Product> query = sessionFactory.getCurrentSession().createQuery("from Product where status like ?1")
	  .setParameter(1, "%" + value + "%");
	   return query.getResultList();
	}
}
