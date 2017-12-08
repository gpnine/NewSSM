package com.lanou.service;

import com.lanou.entity.Car;

import java.util.List;

public interface CarService {

    public List<Car> findCars(String userPhone);


    public int insertShop(int userId, int wineId, int counts);
}
