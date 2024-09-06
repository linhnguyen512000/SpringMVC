package com.asm3.shoeproject.service;

import java.util.List;

import com.asm3.shoeproject.model.Product;
import com.asm3.shoeproject.model.User;

public interface UserService {
	void save(User user);
	User get(int num);
	void update(User user);
	List<User> list();
}
