package com.lanou.service.impl;

import com.lanou.dao.CarMapper;
import com.lanou.dao.WineMapper;
import com.lanou.entity.Car;
import com.lanou.entity.Wine;
import com.lanou.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("carService")
public class CarServiceImpl implements CarService {


	public int insertShop(String userPhone, Integer WId, Integer counts) {
		Car car = new Car();
		car.setUserPhone(userPhone);
		car.setWineId(WId);
		car.setCounts(counts);
		int result = carMapper.insertShop(car);
		return result;


	}





	@Resource
	private CarMapper carMapper;

	@Resource
	private WineMapper wineMapper;

	public List<Car> findCars(String userPhone) {
		List<Car> list = carMapper.findCars(userPhone);
		for(int i=0;i<list.size();i++){
			int id = list.get(i).getWineId();
			Wine wine = wineMapper.goods_detile(id);
			list.get(i).setWines(wine);
		}
		return list;
	}

//	public int insertShop(int userId, int wineId, int counts) {
//		Car car = new Car();
//		car.setUserId(userId);
//		car.setWineId(wineId);
//		car.setCounts(counts);
//		return carMapper.insertShop(car);
//	}
}
