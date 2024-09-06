package com.asm3.shoeproject.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.OrdersDao;
import com.asm3.shoeproject.model.Orders;
import com.asm3.shoeproject.model.Product;

@Service
public class OrdersServiceImp implements OrdersService{
	@Autowired
	private OrdersDao ordersDao;

	@Transactional
	public void save(Orders orders) {
	   ordersDao.save(orders);
	}
	
	@Transactional
	public Orders get(int num) {
		return ordersDao.get(num);
	}
	
	@Transactional
	public void update(Orders orders) {
		ordersDao.update(orders);
	}
	
	@Transactional
	public void updateOrder(int orderId, String name, String phone, String address, String total) {
		Orders order = get(orderId);
		order.setConsignee(name);
		order.setConsigneePhone(phone);
		order.setDeliveryAddress(address);
		order.setTotalAmount(address);
		order.setTotalAmount(total);
		order.setDeliveryStatus("Chưa xét duyệt");
		order.setPaymentMethod("COD");
		order.setPaymentStatus("Chưa thanh toán");
		order.setCreatedAt(LocalDateTime.now());
		order.setUpdatedAt(LocalDateTime.now());
		update(order);
	}
	
	@Transactional
	public void setDeliveryStatus(int id, int statusNum) {
		Orders order = get(id);
		if (statusNum == 1) {
			order.setDeliveryStatus("Chưa xét duyệt");
		} else if (statusNum == 2) {
			order.setDeliveryStatus("Chờ giao hàng");
		} else if (statusNum == 3) {
			order.setDeliveryStatus("Đang giao hàng");
		} else if (statusNum == 4) {
			order.setDeliveryStatus("Đang giao hàng lần 2");
		} else if (statusNum == 5) {
			order.setDeliveryStatus("Giao hàng thành công");
		} else {
			order.setDeliveryStatus("Đã hủy");
		}
		update(order);
	}

	@Transactional(readOnly = true) 
	public List<Orders> list() {
	   return ordersDao.list();
	}
	
	@Transactional(readOnly = true) 
	public List<Orders> listAccount(int id) {
	   return ordersDao.listAccount(id);
	}
	
	@Transactional(readOnly = true) 
	public List<Product> listSearch(String parameter, String value) {
		if (parameter.equals("name")) {
			return ordersDao.listName(value);
		} else if (parameter.equals("totalAmount")) {
			return ordersDao.listTotalAmount(value);
		} else if (parameter.equals("paymentMethod")) {
			return ordersDao.listPaymentMethod(value);
		} else if (parameter.equals("paymentStatus")){
			return ordersDao.listPaymentStatus(value);
		} else {
			return ordersDao.listDeliveryStatus(value);
		}
	   
	}
}
