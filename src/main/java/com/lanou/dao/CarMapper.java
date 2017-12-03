package com.lanou.dao;


import com.lanou.entity.Car;

import java.util.List;

public interface CarMapper {
    public List<Car> findCars(int userId);
    public int insertShop(Car car);
}
