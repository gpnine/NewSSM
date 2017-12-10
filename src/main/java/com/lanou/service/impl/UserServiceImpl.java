package com.lanou.service.impl;

import com.lanou.dao.CarMapper;
import com.lanou.dao.TeacherMapper;
import com.lanou.dao.UserMapper;
import com.lanou.dao.WineMapper;
import com.lanou.entity.Car;
import com.lanou.entity.Teacher;
import com.lanou.entity.User;
import com.lanou.entity.Wine;
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
	public User findUserById(Integer uId) {
		return userMapper.findUserById(uId);
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


	@Resource
	private CarMapper carMapper;
	@Resource
	private WineMapper wineMapper;

	public List<Wine> liuLanJiLu() {
		return userMapper.liuLanJiLu();
	}
	public List<Wine> guanZhu() {
		return userMapper.guanZhu();
	}
	public List<Wine> shangPinTuiJian() {
		return userMapper.shangPinTuiJian();
	}

	public List<Car> cars(String userPhone){
		List<Car> list = carMapper.findCars(userPhone);
		for(int i=0;i<list.size();i++){
			int id = list.get(i).getWineId();
			Wine wine = wineMapper.goods_detile(id);
			list.get(i).setWines(wine);
		}
		return list;
	}

	public Wine selectCar(int w) {
		Wine wine = carMapper.selectCar(w);
		return wine;
	}


}
