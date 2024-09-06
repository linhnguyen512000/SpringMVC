package com.asm3.shoeproject.model;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Orders {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="createdAt")
	private LocalDateTime createdAt;
	
	@Column(name="updatedAt")
	private LocalDateTime updatedAt;
	
	@Column(name="consignee")
	private String consignee;
	
	@Column(name="consigneePhone")
	private String consigneePhone;
	
	@Column(name="deliveryAddress")
	private String deliveryAddress;
	
	@Column(name="deliveryStatus")
	private String deliveryStatus;
	
	@Column(name="paymentMethod")
	private String paymentMethod;
	
	@Column(name="paymentStatus")
	private String paymentStatus;
	
	@Column(name="sentMail")
	private String sentMail;
	
	@Column(name="totalAmount")
	private String totalAmount;
	
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="user_id")
	private User user;
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="orders", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<OrderDetail> orderDetails;
	
	public void add(OrderDetail temp) {
		if (orderDetails == null) {
			orderDetails = new ArrayList<>();
		}
		orderDetails.add(temp);
		
		temp.setOrders(this);
	}
	
	public void remove(OrderDetail temp) {
		orderDetails.remove(temp);
		temp.setOrders(null);
	}

	public Orders() {
		
	}

	public Orders(LocalDateTime createdAt, LocalDateTime updatedAt, String consignee, String consigneePhone,
			String deliveryAddress, String deliveryStatus, String paymentMethod, String paymentStatus, String sentMail,
			String totalAmount) {
		super();
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.consignee = consignee;
		this.consigneePhone = consigneePhone;
		this.deliveryAddress = deliveryAddress;
		this.deliveryStatus = deliveryStatus;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.sentMail = sentMail;
		this.totalAmount = totalAmount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getConsigneePhone() {
		return consigneePhone;
	}

	public void setConsigneePhone(String consigneePhone) {
		this.consigneePhone = consigneePhone;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getSentMail() {
		return sentMail;
	}

	public void setSentMail(String sentMail) {
		this.sentMail = sentMail;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
