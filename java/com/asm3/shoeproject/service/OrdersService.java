package com.asm3.shoeproject.service;

import java.util.List;

import com.asm3.shoeproject.model.Orders;
import com.asm3.shoeproject.model.Product;

public interface OrdersService {
	void save(Orders orders);
	Orders get(int num);
	void update(Orders orders);
	public void updateOrder(int orderId, String name, String phone, String address, String total);
	List<Orders> list();
	public List<Orders> listAccount(int id);
	public void setDeliveryStatus(int id, int statusNum);
	public List<Product> listSearch(String parameter, String value);
}
