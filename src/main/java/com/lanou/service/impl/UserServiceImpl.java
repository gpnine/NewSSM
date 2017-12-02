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

	public int insertUser(User user) {
		return userMapper.insertUser(user);
	}

	public User findUser(User user) {
		return userMapper.login(user);
	}
}
