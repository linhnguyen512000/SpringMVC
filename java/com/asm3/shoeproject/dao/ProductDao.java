package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.Product;

public interface ProductDao {
	void save(Product product);
	Product get(int num);
	void update(Product product);
	public void delete(Product product);
	List<Product> list();
	public List<Product> list8();
	public List<Product> listAll();
	public List<Product> listMul(String s);
	public List<Product> listSearch1(String value);
	public List<Product> listName(String value);
	public List<Product> listVersionName(String value);
	public List<Product> listPrice(String value);
	public List<Product> listStatus(String value);
}
