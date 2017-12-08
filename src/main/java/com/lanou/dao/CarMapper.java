package com.lanou.dao;


import com.lanou.entity.Car;
import com.lanou.entity.Wine;

import java.util.List;

public interface CarMapper {
    public List<Car> findCars(String userPhone);



    public int insertShop(Car car);



    public Wine selectCar(int w);


    public List<Car> extend(Car car);

    public void addCounts(Car car);

    public Car selectCount(Car car);
}
