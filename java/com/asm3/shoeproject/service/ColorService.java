package com.asm3.shoeproject.service;

import java.util.List;

import com.asm3.shoeproject.model.Color;

public interface ColorService {
	void save(Color color);
	Color get(int num);
	void update(Color color);
	List<Color> list();
	public List<Color> listProduct(int id);
}
