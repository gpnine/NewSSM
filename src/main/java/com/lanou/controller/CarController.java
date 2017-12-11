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
//        return list;
//    }

    //    插入商品
    @RequestMapping("/insertShop.do")
    @ResponseBody
    public int insertShop(String userPhone, Integer wineId, Integer counts) {
        int result = carService.insertShop(userPhone, wineId, counts);
        return result;
    }

    //    删除商品
    @RequestMapping("/deleteWine.do")
    @ResponseBody
    public String deleteWine(Integer wineId) {
        int result = carService.deleteWine(wineId);
        if (result == 0) {
            return "0";
        } else {
            return "1";
        }
    }

    //    删除商品
    @RequestMapping("/deleteMore.do")
    public String deleteMore(String wineStr) {
        String[] wineArr = wineStr.split("\\-");
        for (int i = 0; i < wineArr.length; i++) {
            int wineId = Integer.parseInt(wineArr[i]);
            int result = carService.deleteWine(wineId);
        }
        return "1";
    }

    //    更新商品商品数量
    @RequestMapping("/updateCount.do")
    public String updateCount(Integer wineId) {
        int result = carService.updateCount(wineId);
        return "1";
    }
}
