package com.lanou.controller;

import com.lanou.entity.Car;
import com.lanou.service.CarService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {

    @Resource
    private CarService carService;

    //    查找该用户购物车
    @RequestMapping("/findCars.do")
    @ResponseBody
    public List<Car> findCars(int userId) {
        List<Car> cars = carService.findCars(userId);
        System.out.print(cars);
        return cars;
    }

    //    插入商品
    @RequestMapping("/insertShop.do")
    @ResponseBody
    public String insertShop(int userId, int wineId, int counts) {
        int result = carService.insertShop(userId, wineId, counts);
        System.out.print(result);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }
}
