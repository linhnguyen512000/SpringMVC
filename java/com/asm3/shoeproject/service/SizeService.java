package com.asm3.shoeproject.service;

import java.util.List;

import com.asm3.shoeproject.model.Size;

public interface SizeService {
	void save(Size size);
	Size get(int num);
	void update(Size size);
	List<Size> list();
	public List<Size> listProduct(int id);
}
