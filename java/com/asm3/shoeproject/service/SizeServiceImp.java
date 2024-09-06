package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.SizeDao;
import com.asm3.shoeproject.model.Size;

@Service
public class SizeServiceImp implements SizeService{
	@Autowired
	private SizeDao sizeDao;

	@Transactional
	public void save(Size size) {
	   sizeDao.save(size);
	}
	
	@Transactional
	public Size get(int num) {
		return sizeDao.get(num);
	}
	
	@Transactional
	public void update(Size size) {
		sizeDao.update(size);
	}

	@Transactional(readOnly = true) 
	public List<Size> list() {
	   return sizeDao.list();
	}
	
	@Transactional(readOnly = true) 
	public List<Size> listProduct(int id) {
	   return sizeDao.listProduct(id);
	}
}
