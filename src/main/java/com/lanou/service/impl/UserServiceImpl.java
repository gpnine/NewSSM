package com.lanou.service.impl;

import com.lanou.dao.TeacherMapper;
import com.lanou.dao.UserMapper;
import com.lanou.entity.Teacher;
import com.lanou.entity.User;
import com.lanou.service.TeacherService;
import com.lanou.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;

	public List<User> findUsers() {
		return userMapper.findUsers();
	}

	public User findUserPhone(String iphone) {
		return userMapper.findUserPhone(iphone);
	}

	public int insertUser(String userPhone,String password) {
		User user = new User();
		user.setUserPhone(userPhone);
		user.setPassword(password);
		return userMapper.insertUser(user);
	}

	public void updatePassword(String userPhone,String password,String newPassword) {
		password = newPassword;
		User user = new User();
		user.setUserPhone(userPhone);
		user.setPassword(password);
		userMapper.updatePassword(user);
		System.out.print("修改密码");
	}

	public User findUser(String userPhone, String password) {
		User user = new User();
		user.setUserPhone(userPhone);
		user.setPassword(password);
		return userMapper.login(user);
	}
}
