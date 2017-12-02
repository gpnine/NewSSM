package com.lanou.service;

import com.lanou.entity.User;

import java.util.List;

public interface UserService {
	public List<User> findUsers();
	public User findUserPhone(String iphone);
	public int insertUser(User user);
	public User findUser(User user);

}
