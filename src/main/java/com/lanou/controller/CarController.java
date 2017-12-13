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
    public String deleteWine(Integer wineId, String userPhone) {
        int result = carService.deleteWine(wineId, userPhone);
        if (result == 0) {
            return "0";
        } else {
            return "1";
        }
    }

    //    删除商品
    @RequestMapping("/deleteMore.do")
    @ResponseBody
    public String deleteMore(String wineStr, String userPhone) {
        String[] wineArr = wineStr.split("\\-");
        int result = 0;
        for (int i = 0; i < wineArr.length; i++) {
            int wineId = Integer.parseInt(wineArr[i]);
            result = carService.deleteWine(wineId, userPhone);
        }
        if (result == 0) {
            return "0";
        } else {
            return "1";
        }
    }

    //    更新商品商品数量
    @RequestMapping("/selectBychecked.do")
    @ResponseBody
    public List<Car> selectBychecked() {
        List<Car> cars = carService.selectBychecked();
        return cars;
    }

    //    更新商品商品数量
    @RequestMapping("/updateCount.do")
    @ResponseBody
    public String updateCount(Integer counts, Integer wineId, String userPhone) {
        int result = carService.updateCount(counts, wineId, userPhone);
        if (result == 0) {
            return "0";
        } else {
            return "1";
        }
    }

    //    更新商品商品数量
    @RequestMapping("/updateChecked.do")
    @ResponseBody
    public String updateChecked(Integer checks, Integer wineId) {
        int result = carService.updateChecked(checks, wineId);
        if (result == 0) {
            return "0";
        } else {
            return "1";
        }
    }
}
