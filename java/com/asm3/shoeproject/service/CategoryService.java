package com.asm3.shoeproject.service;

import java.util.List;

import com.asm3.shoeproject.model.Category;

public interface CategoryService {
	void save(Category category);
	Category get(int num);
	void update(Category category);
	List<Category> list();
}
