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
    int result = 0;

    public int insertShop(String userPhone, Integer WId, Integer counts) {
        Car car = new Car();
        car.setUserPhone(userPhone);
        car.setWineId(WId);
        car.setCounts(counts);

        List<Car> list = carMapper.extend(car);
        System.out.println("是否存在：" + list.size());

        if (list.size() == 0) {
            carMapper.insertShop(car);
            return result;
        } else {
            int count = carMapper.selectCount(car).getCounts();
            System.out.println("添加数量:" + counts);
            System.out.println("原来数量:" + count);
            car.setCounts(count + counts);
            carMapper.addCounts(car);
        }

        return result;


    }


    @Resource
    private CarMapper carMapper;

    @Resource
    private WineMapper wineMapper;

    public List<Car> findCars(String userPhone) {
        List<Car> list = carMapper.findCars(userPhone);
        for (int i = 0; i < list.size(); i++) {
            int id = list.get(i).getWineId();
            Wine wine = wineMapper.goods_detile(id);
            list.get(i).setWines(wine);
        }
        return list;
    }

    public int deleteWine(Integer wineId, String userPhone) {
        return carMapper.deleteWine(wineId, userPhone);
    }

    public int deleteCar() {
        return carMapper.deleteCar();
    }

    public int updateCount(Integer counts, Integer wineId,String userPhone) {
        Car car = new Car();
        car.setCounts(counts);
        car.setWineId(wineId);
        car.setUserPhone(userPhone);
        return carMapper.updateCount(car);
    }

    public int updateChecked(Integer checked, Integer wineId) {
        Car car = new Car();
        car.setChecked(checked);
        car.setWineId(wineId);
        return carMapper.updateChecked(car);
    }
    //	public int insertShop(int userId, int wineId, int counts) {
//		Car car = new Car();
//		car.setUserId(userId);
//		car.setWineId(wineId);
//		car.setCounts(counts);
//		return carMapper.insertShop(car);
//	}
}
