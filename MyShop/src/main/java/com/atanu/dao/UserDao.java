package com.atanu.dao;

import java.util.List;

import com.atanu.model.User;

public interface UserDao {
	public void addUser(User u);
	public void updateUser(User u);
	public List<User> listUser();
	public User getUserById(int id);
	public void removeUser(int id);
}
