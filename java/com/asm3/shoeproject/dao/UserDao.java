package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.User;

public interface UserDao {
	void save(User user);
	User get(int num);
	void update(User user);
	List<User> list();
}
