package com.atanu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atanu.dao.ProductDao;
import com.atanu.model.Product;

@Service
public class ProductServiceImpl {

	@Autowired
	private ProductDao productDao;
	
	@Transactional
	public void addProduct(Product p){
		productDao.addProduct(p);
	}
	@Transactional
	public void updateProduct(Product p){
		productDao.updateProduct(p);
	}
	
	@Transactional
	public List<Product > listProduct(){
		return productDao.listProduct();
	}
	@Transactional
	public Product  getProductById(int productId){
		return productDao.getProductById(productId);
	}
	@Transactional
	public void removeProduct(int productId){
		productDao.removeProduct(productId);
	}
	
}
