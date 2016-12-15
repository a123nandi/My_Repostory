package com.atanu.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.atanu.dao.ProductDao;
import com.atanu.model.Product;



@Repository("ProductDao")
@Transactional
@EnableTransactionManagement
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
	}

	public List<Product> listProduct() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> ProductList = session.createQuery("from Product").list();
		
		return ProductList;
	}

	public Product getProductById(int productId) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product p = (Product) session.load(Product.class, new Integer(productId));
		
		return p;
	}

	public void removeProduct(int productId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(productId));
		if(null != p){
			session.delete(p);
		}
	}

}
