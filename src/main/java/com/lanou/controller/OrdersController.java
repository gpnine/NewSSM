package com.lanou.controller;

import com.lanou.entity.*;
import com.lanou.service.CarService;
import com.lanou.service.OrdersService;
import com.lanou.service.WineService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Resource
    private OrdersService ordersService;
    @Resource
    private WineService wineService;
    @Resource
    private CarService carService;

    //    查找该用户购物车
    @RequestMapping("/findCars.do")
    @ResponseBody
    public List<Car> findCars(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<Car> list = carService.findCars(userPhone);
        return list;
    }

    @RequestMapping("/findWine.do")
    @ResponseBody
    public Wine findWineByWineId(Integer wineId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Wine wine = wineService.findWineByWineId(wineId);
        return wine;
    }


    @RequestMapping("/findOrders.do")
    @ResponseBody
    public Map<String, Object> findOrders(Integer user_id, Integer order_id, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> map = new HashMap<String, Object>();
        List<WuliuAdress> wuliuAdress = ordersService.findWuliu(user_id);
        List<OrderAndWine> orderAndWines = ordersService.findWines(order_id);
        for (int i = 0; i < orderAndWines.size(); i++) {
            map.put("wines"+i, wineService.findWineByWineId(orderAndWines.get(i).getWine_id()));
        }
        map.put("wuliuAdress", wuliuAdress);
        return map;
    }

    @RequestMapping("/insertOrders.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertOrders.do?OrderPay=在线支付&OrderAllMoney=1000&OrderWineId=1001&UserId=1&OrderTicket=不需要发票&OrderText=老板你好帅&OrderScore=10&OrderYunfei=50
    public String insertOrders(String OrderPay, double OrderAllMoney, int UserId, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertOrders(OrderPay, OrderAllMoney, UserId, OrderTicket, OrderText, OrderScore, OrderYunfei);
        carService.deleteCar();
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    @RequestMapping("/insertAdress.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertAdress.do?ShouhuoName=朱成林&SHouhuoAdress=安徽省&XiangxiAdress=池州&ShouhuoPhone=13859642315&user_id=1
    public String insertAdress(String ShouhuoName, String SHouhuoAdress, String XiangxiAdress, String ShouhuoPhone, int user_id, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertAdress(ShouhuoName, SHouhuoAdress, XiangxiAdress, ShouhuoPhone, user_id);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    @RequestMapping("/insertWine.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertWine.do?order_id=1&wine_id=1001
    public String insertWine(Integer order_id, Integer wine_id, Integer wine_count, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertWine(order_id, wine_id, wine_count);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }
}
