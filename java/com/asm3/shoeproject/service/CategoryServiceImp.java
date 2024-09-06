package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.CategoryDao;
import com.asm3.shoeproject.model.Category;

@Service
public class CategoryServiceImp implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	@Transactional
	public void save(Category category) {
	   categoryDao.save(category);
	}
	
	@Transactional
	public Category get(int num) {
		return categoryDao.get(num);
	}
	
	@Transactional
	public void update(Category category) {
		categoryDao.update(category);
	}

	@Transactional(readOnly = true) 
	public List<Category> list() {
	   return categoryDao.list();
	}
}
