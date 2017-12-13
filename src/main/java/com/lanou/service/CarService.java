package com.lanou.service;

import com.lanou.entity.Car;

import java.util.List;

public interface CarService {

    public List<Car> findCars(String userPhone);

    public List<Car> selectBychecked();

    public int deleteCar();

    public int deleteWine(Integer wineId, String userPhone);

    public int clearCar(String userPhone);

    public int updateCount(Integer counts, Integer wineId, String userPhone);

    public int updateChecked(Integer checks, Integer wineId);

    public int insertShop(String userPhone, Integer wineId, Integer counts);
}
