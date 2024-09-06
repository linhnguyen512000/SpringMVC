package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.Orders;
import com.asm3.shoeproject.model.Product;

public interface OrdersDao {
	void save(Orders orders);
	Orders get(int num);
	void update(Orders orders);
	List<Orders> list();
	public List<Product> listName(String value);
	public List<Orders> listAccount(int id);
	public List<Product> listTotalAmount(String value);
	public List<Product> listPaymentMethod(String value);
	public List<Product> listPaymentStatus(String value);
	public List<Product> listDeliveryStatus(String value);
}
