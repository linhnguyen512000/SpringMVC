package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.Brand;

public interface BrandDao {
	void save(Brand brand);
	Brand get(int num);
	void update(Brand brand);
	List<Brand> list();
}
