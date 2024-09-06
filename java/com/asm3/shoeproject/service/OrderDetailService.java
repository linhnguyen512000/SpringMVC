package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.model.OrderDetail;
import com.asm3.shoeproject.model.Product;

public interface OrderDetailService {
	void save(OrderDetail orderDetail);
	OrderDetail get(int num);
	void update(OrderDetail orderDetail);
	void delete(int num);
	public void setProduct(OrderDetail od, int productId);
	public void setOrder1(OrderDetail od, int productId);
	public void setOrder2(OrderDetail od, int orderId);
	List<OrderDetail> list();
	public List<OrderDetail> listOrder(int num);
}
