package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.UserDao;
import com.asm3.shoeproject.model.User;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao userDao;

	@Transactional
	public void save(User user) {
	   userDao.save(user);
	}
	
	@Transactional
	public User get(int num) {
		return userDao.get(num);
	}
	
	@Transactional
	public void update(User user) {
		userDao.update(user);
	}

	@Transactional(readOnly = true) 
	public List<User> list() {
	   return userDao.list();
	}
}
