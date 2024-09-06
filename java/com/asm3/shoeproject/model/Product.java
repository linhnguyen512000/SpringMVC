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
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="createdAt")
	private LocalDateTime createdAt;
	
	@Column(name="updatedAt")
	private LocalDateTime updatedAt;
	
	@Column(name="description")
	private String description;
	
	@Column(name="isDeleted")
	private int isDeleted;
	
	@Column(name="name")
	private String name;
	
	@Column(name="price")
	private int price;
	
	@Column(name="status")
	private String status;
	
	@Column(name="versionName")
	private String versionName;
	
	@Column(name="image")
	private String image;
	
	@Column(name="imageCreatedAt")
	private LocalDateTime imageCreatedAt;
	
	@Column(name="imageUpdatedAt")
	private LocalDateTime imageUpdatedAt;
	
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="brand_id")
	private Brand brand;
	
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="category_id")
	private Category category;
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="product", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<OrderDetail> orderDetails;
	
	public void add(OrderDetail temp) {
		if (orderDetails == null) {
			orderDetails = new ArrayList<>();
		}
		orderDetails.add(temp);
		
		temp.setProduct(this);
	}
	
	public void remove(OrderDetail temp) {
		orderDetails.remove(temp);
		temp.setProduct(null);
	}
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="product", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<Color> colors;
	
	public void add(Color temp) {
		if (colors == null) {
			colors = new ArrayList<>();
		}
		colors.add(temp);
		
		temp.setProduct(this);
	}
	
	public void remove(Color temp) {
		colors.remove(temp);
		temp.setProduct(null);
	}
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="product", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<Size> sizes;
	
	public void add(Size temp) {
		if (sizes == null) {
			sizes = new ArrayList<>();
		}
		sizes.add(temp);
		
		temp.setProduct(this);
	}
	
	public void remove(Size temp) {
		sizes.remove(temp);
		temp.setProduct(null);
	}
	
	public Product() {
		
	}

	public Product(LocalDateTime createdAt, LocalDateTime updatedAt, String description, int isDeleted, String name,
			int price, String status, String versionName, String image, LocalDateTime imageCreatedAt,
			LocalDateTime imageUpdatedAt) {
		super();
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.description = description;
//		0 là chưa delete, 1 là đã delete
		this.isDeleted = isDeleted;
		this.name = name;
		this.price = price;
		this.status = status;
		this.versionName = versionName;
		this.image = image;
		this.imageCreatedAt = imageCreatedAt;
		this.imageUpdatedAt = imageUpdatedAt;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getVersionName() {
		return versionName;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public LocalDateTime getImageCreatedAt() {
		return imageCreatedAt;
	}

	public void setImageCreatedAt(LocalDateTime imageCreatedAt) {
		this.imageCreatedAt = imageCreatedAt;
	}

	public LocalDateTime getImageUpdatedAt() {
		return imageUpdatedAt;
	}

	public void setImageUpdatedAt(LocalDateTime imageUpdatedAt) {
		this.imageUpdatedAt = imageUpdatedAt;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public List<Color> getColors() {
		return colors;
	}

	public void setColors(List<Color> colors) {
		this.colors = colors;
	}

	public List<Size> getSizes() {
		return sizes;
	}

	public void setSizes(List<Size> sizes) {
		this.sizes = sizes;
	}
	
	
	
}
