package com.lanou.service.impl;

import com.lanou.dao.CarMapper;
import com.lanou.entity.Car;
import com.lanou.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("carService")
public class CarServiceImpl implements CarService {
	@Resource
	private CarMapper carMapper;

	public List<Car> findCars(int userId) {
		return carMapper.findCars(userId);
	}

	public int insertShop(int userId, int wineId, int counts) {
		Car car = new Car();
		car.setUserId(userId);
		car.setWineId(wineId);
		car.setCounts(counts);
		return carMapper.insertShop(car);
	}
}
