package com.lanou.dao;


import com.lanou.entity.Car;
import com.lanou.entity.Wine;

import java.util.List;

public interface CarMapper {
    public List<Car> findCars(int userId);



    public int insertShop(Car car);



    public Wine selectCar(int w);
}
