package com.asm3.shoeproject.service;

import java.time.LocalDateTime;
import java.util.List;

import com.asm3.shoeproject.model.Product;

public interface ProductService {
	void save(Product product);
	Product get(int num);
	void update(Product product);
	public void delete(Product product);
	List<Product> list();
	public List<Product> list8();
	public List<Product> listAll();
	public List<Product> listSearch1(String value);
	public List<Product> listMul(int brand, int category, int price, int size, int color);
	public void addProduct(Product product, int brandNum, int categoryNum);
	public void updateProduct(int id, LocalDateTime updatedAt, String description, String name, int price, String status, String pathImage, 
			LocalDateTime ImageUpdatedAt, int brandNum, int categoryNum);
	public void changeStatus(int id);
	public List<Product> listSearch(String parameter, String value);
}
