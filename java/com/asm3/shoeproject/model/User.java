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
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="createdAt")
	private LocalDateTime createdAt;
	
	@Column(name="updatedAt")
	private LocalDateTime updatedAt;
	
	@Column(name="address")
	private String address;
	
	@Column(name="dateOfBirth")
	private String dateOfBirth;
	
	@Column(name="gender")
	private int gender;
	
	@Column(name="isDeleted")
	private int isDeleted;
	
	@Column(name="image")
	private String image;
	
	@Column(name="password")
	private String password;
	
	@Column(name="name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone")
	private String phone;
	
//	1 là Admin, 2 là User
	@Column(name="role")
	private int role;
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="user", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<Orders> orders;
	
	public void add(Orders temp) {
		if (orders == null) {
			orders = new ArrayList<>();
		}
		orders.add(temp);
		
		temp.setUser(this);
	}
	
	public void remove(Orders temp) {
		orders.remove(temp);
		temp.setUser(null);
	}
	
	public User() {
		
	}

	public User(LocalDateTime createdAt, LocalDateTime updatedAt, String address, String dateOfBirth,
			 String image, String password, String name, String email, String phone,
			int role) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
//		0 là chưa delete, 1 là đã delete
		this.isDeleted = 0;
		this.image = image;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.role = role;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
	
}
