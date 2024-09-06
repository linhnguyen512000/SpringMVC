package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.Category;

public interface CategoryDao {
	void save(Category category);
	Category get(int num);
	void update(Category category);
	List<Category> list();
}
