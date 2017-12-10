package com.lanou.service;

import com.lanou.entity.Car;
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
	public List<Wine> guanZhu();
	public List<Wine> shangPinTuiJian();

	public User findUserById(Integer uId);
	public List<Car> cars(String userPhone);
	public Wine selectCar(int w);


}
