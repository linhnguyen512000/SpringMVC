package com.asm3.shoeproject.dao;

import java.util.List;

import com.asm3.shoeproject.model.OrderDetail;

public interface OrderDetailDao {
	void save(OrderDetail orderDetail);
	OrderDetail get(int num);
	void update(OrderDetail orderDetail);
	public void delete(int num);
	List<OrderDetail> list();
	public List<OrderDetail> listOrder(int num);
}
