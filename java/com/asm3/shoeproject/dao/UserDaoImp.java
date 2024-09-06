package com.asm3.shoeproject.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asm3.shoeproject.model.User;

@Repository
public class UserDaoImp implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(User user) {
	   sessionFactory.getCurrentSession().save(user);
	}
	
	@Override
	public User get(int num) {
		return sessionFactory.getCurrentSession().get(User.class, num);
	}
	
	@Override
	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

	@Override
	public List<User> list() {
	   @SuppressWarnings("unchecked")
	   TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User");
	   return query.getResultList();
	}
}
