package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.OrderDetailDao;
import com.asm3.shoeproject.model.OrderDetail;
import com.asm3.shoeproject.model.Orders;
import com.asm3.shoeproject.model.Product;
import com.asm3.shoeproject.model.User;

@Service
public class OrderDetailServiceImp implements OrderDetailService{
	@Autowired
	private OrderDetailDao orderDetailDao;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrderDetailService orderDetailService;

	@Transactional
	public void save(OrderDetail orderDetail) {
	   orderDetailDao.save(orderDetail);
	}
	
	@Transactional
	public OrderDetail get(int num) {
		return orderDetailDao.get(num);
	}
	
	@Transactional
	public void update(OrderDetail orderDetail) {
		orderDetailDao.update(orderDetail);
	}
	
	@Transactional
	public void delete(int num) {
		orderDetailDao.delete(num);
	}
	
	@Transactional
	public void setProduct(OrderDetail od, int productId) {
		Product p = productService.get(productId);
		p.add(od);
		productService.update(p);
	}
	
	@Transactional
	public void setOrder1(OrderDetail od, int productId) {
		Orders order = new Orders();
		User user = userService.get(productId);
		user.add(order);
		order.add(od);
		ordersService.save(order);
		userService.update(user);
	}
	
	@Transactional
	public void setOrder2(OrderDetail od, int orderId) {
		Orders order = ordersService.get(orderId);
		order.add(od);
		ordersService.update(order);
	}

	@Transactional(readOnly = true) 
	public List<OrderDetail> list() {
	   return orderDetailDao.list();
	}
	
	@Transactional(readOnly = true) 
	public List<OrderDetail> listOrder(int num) {
	   return orderDetailDao.listOrder(num);
	}
}
