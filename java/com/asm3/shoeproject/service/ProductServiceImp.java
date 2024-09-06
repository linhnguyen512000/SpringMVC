package com.asm3.shoeproject.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.BrandDao;
import com.asm3.shoeproject.dao.CategoryDao;
import com.asm3.shoeproject.dao.ColorDao;
import com.asm3.shoeproject.dao.ProductDao;
import com.asm3.shoeproject.model.Brand;
import com.asm3.shoeproject.model.Category;
import com.asm3.shoeproject.model.Product;

@Service
public class ProductServiceImp implements ProductService {
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private BrandDao brandDao;
	
	@Autowired
	private ColorDao colorDao;
	
	@Autowired
	private CategoryDao categoryDao;


	@Transactional
	public void save(Product product) {
	   productDao.save(product);
	}
	
	@Transactional
	public Product get(int num) {
		return productDao.get(num);
	}
	
	@Transactional
	public void update(Product product) {
		productDao.update(product);
	}
	
	@Transactional
	public void delete(Product product) {
		productDao.delete(product);
	}

	@Transactional(readOnly = true) 
	public List<Product> list() {
	   return productDao.list();
	}
	
	@Transactional(readOnly = true) 
	public List<Product> list8() {
	   return productDao.list8();
	}
	
	@Transactional(readOnly = true) 
	public List<Product> listAll() {
	   return productDao.listAll();
	}
	
	@Transactional(readOnly = true) 
	public List<Product> listSearch1(String value) {
	   return productDao.listSearch1(value);
	}
	
	@Transactional(readOnly = true) 
	public List<Product> listMul(int brand, int category, int price, int size, int color) {		
		List<Product> list = productDao.list();
		List<Product> list1 = new ArrayList<>();
		
		if (brand == 0) {
			list1 = list;
		} else {
			for (int i=0; i<list.size(); i++) {
				if (list.get(i).getBrand().getId() == brand) {
					list1.add(list.get(i));
				}
			}
		}
		
		List<Product> list2 = new ArrayList<>();
		if (category == 0) {
			list2 = list1;
		} else {
			for (int i=0; i<list1.size(); i++) {
				if (list1.get(i).getCategory().getId() == category) {
					list2.add(list1.get(i));
				}
			}
		}
		
		List<Product> list3 = new ArrayList<>();
		if (price == 0) {
			list3 = list2;
		} else {
			for (int i=0; i<list2.size(); i++) {
				int num = list2.get(i).getPrice();
				if (price == 1 && num >= 0 && num <= 1000000) {
					list3.add(list2.get(i));
				}
				if (price == 2 && num >= 1000000 && num <= 2000000) {
					list3.add(list2.get(i));
				}
				if (price == 3 && num >= 2000000 && num <= 3000000) {
					list3.add(list2.get(i));
				}
				if (price == 4 && num >= 3000000) {
					list3.add(list2.get(i));
				}
			}
		}
		
		
		List<Product> list4 = new ArrayList<>();
		if (size == 0) {
			list4 = list3;
		} else {
			for (int i=0; i<list3.size(); i++) {
				for (int j=0; j<list3.get(i).getSizes().size();j++) {
					if (list3.get(i).getSizes().get(i).getName() == size) {
						list4.add(list3.get(i));
					}
				}
			}
		}
		
		
		List<Product> list5 = new ArrayList<>();
		if (color == 0) {
			list5 = list4;
		} else {
			for (int i=0; i<list4.size(); i++) {
				for (int j=0; j<list4.get(i).getColors().size();j++) {
					if (list4.get(i).getColors().get(i).getName().equals(colorDao.get(color).getName())) {
						list5.add(list4.get(i));
					}
				}
			}
		}
		
		
		List<Product> listRe = new ArrayList<>();
		for (int i=0; i<list5.size(); i++) {
			if (list5.get(i).getStatus().equals("Đang bán")) {
				listRe.add(list5.get(i));
			}
		}
		
	   return listRe;
	}
	
	@Transactional
	public void addProduct(Product product, int brandNum, int categoryNum) {
		Brand brand = brandDao.get(brandNum);
		brand.add(product);
		
		Category category = categoryDao.get(categoryNum);
		category.add(product);
		
		save(product);
		brandDao.save(brand);
		categoryDao.save(category);
	}
	
	@Transactional
	public void updateProduct(int id, LocalDateTime updatedAt, String description, String name, int price, String status, String pathImage, 
			LocalDateTime ImageUpdatedAt, int brandNum, int categoryNum) {
		Product p = get(id);
		p.setUpdatedAt(LocalDateTime.now());
		p.setDescription(description);
		p.setName(name);
		p.setPrice(price);
		p.setStatus(status);
		p.setImage(pathImage);
		p.setImageUpdatedAt(LocalDateTime.now());
		
		Brand brandOld = p.getBrand();
		brandOld.remove(p);
		brandDao.update(brandOld);
		
		Category categoryOld = p.getCategory();
		categoryOld.remove(p);
		categoryDao.update(categoryOld);
		
		Brand brand = brandDao.get(brandNum);
		brand.add(p);
		
		Category category = categoryDao.get(categoryNum);
		category.add(p);
		
		update(p);
		brandDao.update(brand);
		categoryDao.update(category);
	}
	
	@Transactional
	public void changeStatus(int id) {
		Product p = get(id);
		if (p.getStatus().equals("Đang bán")) {
			p.setStatus("Ngưng bán");
		} else {
			p.setStatus("Đang bán");
		}
		update(p);
	}
	
	@Transactional(readOnly = true) 
	public List<Product> listSearch(String parameter, String value) {
		if (parameter.equals("name")) {
			return productDao.listName(value);
		} else if (parameter.equals("versionName")) {
			return productDao.listVersionName(value);
		} else if (parameter.equals("price")) {
			return productDao.listPrice(value);
		} else {
			return productDao.listStatus(value);
		}
	   
	}
}
