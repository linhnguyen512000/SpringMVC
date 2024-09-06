package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.Color;

public interface ColorDao {
	void save(Color color);
	Color get(int num);
	void update(Color color);
	List<Color> list();
	public List<Color> listProduct(int id);
}
