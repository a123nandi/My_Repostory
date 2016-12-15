package com.atanu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atanu.dao.UserDao;
import com.atanu.model.User;

@Service
public class UserServiceImpl {

	@Autowired
	private UserDao userDao;
	
	@Transactional
	public void addUser(User u){
		this.userDao.addUser(u);
	}
	@Transactional
	public void updateUser(User u) {
		this.userDao.updateUser(u);
	}
	@Transactional
	public List<User> listUser() {
	return	this.userDao.listUser();
		 
	}
	@Transactional
	public User getUserById(int id) {
		return this.userDao.getUserById(id);
	}
	@Transactional
	public void removeUser(int id) {
		this.userDao.removeUser(id);
	}
}
