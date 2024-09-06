package com.asm3.shoeproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asm3.shoeproject.dao.ColorDao;
import com.asm3.shoeproject.model.Color;

@Service
public class ColorServiceImp implements ColorService {
	@Autowired
	private ColorDao colorDao;

	@Transactional
	public void save(Color color) {
	   colorDao.save(color);
	}
	
	@Transactional
	public Color get(int num) {
		return colorDao.get(num);
	}
	
	@Transactional
	public void update(Color color) {
		colorDao.update(color);
	}

	@Transactional(readOnly = true) 
	public List<Color> list() {
	   return colorDao.list();
	}
	
	@Transactional(readOnly = true) 
	public List<Color> listProduct(int id) {
	   return colorDao.listProduct(id);
	}
}
