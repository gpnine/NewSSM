package com.lanou.dao;


import com.lanou.entity.Car;
import com.lanou.entity.Wine;

import java.util.List;

public interface CarMapper {
    public List<Car> findCars(String userPhone);

    //查找选中要买的商品
    public List<Car> selectBychecked();

    //
    public void addCounts(Car car);

    public int insertShop(Car car);

    public Wine selectCar(int w);

    public List<Car> extend(Car car);

    //找到对应商品的数量
    public Car selectCount(Car car);

    //删除购物车里的商品
    public int deleteWine(Car car);

    //    清空购物车
    public int clearCar(String userPhone);

    //实时更新数量
    public int updateCount(Car car);

    //更新选中的商品
    public int updateChecked(Car car);

    public int deleteCar();
}
