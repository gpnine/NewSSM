package com.lanou.service;

import com.lanou.entity.Car;

import java.util.List;

public interface CarService {
    public String findCars(int userId);
    public int insertShop(int userId, int wineId, int counts);
}
