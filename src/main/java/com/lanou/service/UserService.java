package com.lanou.service;

import com.lanou.entity.User;
import com.lanou.entity.Wine;

import java.util.List;

public interface UserService {
	public List<User> findUsers();
	public User findUserPhone(String iphone);
	public int insertUser(String userPhone,String password);
	public User findUser(String userPhone,String password);
	public void updatePassword(String userPhone,String password,String newPasswod);

	public List<Wine> liuLanJiLu();


}
