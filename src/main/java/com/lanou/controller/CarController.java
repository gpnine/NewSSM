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
//    @RequestMapping("/findCars.do")
//    @ResponseBody
//    public List<Car> findCars(String userPhone) {
//        List<Car> list = carService.findCars(userPhone);
//        System.out.print("购物车："+list);
//        return list;
//    }

    //    插入商品
    @RequestMapping("/insertShop.do")
    @ResponseBody
    public int insertShop(String userPhone, Integer wineId, Integer counts) {
        int result = carService.insertShop(userPhone, wineId, counts);
        return result;
    }
}
