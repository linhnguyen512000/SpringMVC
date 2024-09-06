package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.*;
import com.asm3.shoeproject.model.Brand;

@Service
public class BrandServiceImp implements BrandService{
	@Autowired
	private BrandDao brandDao;

	@Transactional
	public void save(Brand brand) {
	   brandDao.save(brand);
	}
	
	@Transactional
	public Brand get(int num) {
		return brandDao.get(num);
	}
	
	@Transactional
	public void update(Brand brand) {
		brandDao.update(brand);
	}

	@Transactional(readOnly = true) 
	public List<Brand> list() {
	   return brandDao.list();
	}
}
