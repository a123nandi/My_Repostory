package com.atanu.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.atanu.dao.UserDao;
import com.atanu.model.User;

@Repository("UserDao")
@Transactional
@EnableTransactionManagement
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Transactional
	public void addUser(User u) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(u);
	}

	@Transactional
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		session.update(u);
	}

	@Transactional
	public List<User> listUser() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		List<User>users=session.createQuery("from User").list();
		return users;
	}

	@Transactional
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		/*User users=(User)session.createQuery("from User where id="+id).getSingleResult();*/
		/*Person p = (Person) session.load(Person.class, new Integer(id));*/
		User users=(User)session.load(User.class, new Integer(id));
		return users;
	}

	@Transactional
	public void removeUser(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		User users=(User)session.load(User.class, new Integer(id));
		if(null!=users){
			session.delete(users);
		}
	}

}
