package com.lanou.controller;

import com.lanou.entity.Orders;
import com.lanou.service.OrdersService;
import com.lanou.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Orders")
public class OrdersController {

    @Resource
    private OrdersService ordersService;
    @Resource
    private UserService userService;

    @RequestMapping("/findOrders.do")
    @ResponseBody
    public List<Orders> findOrders() {
        List<Orders> orders = ordersService.findOrders();
        int userId = orders.get(0).getUserId();
        System.out.println(userId);
        userService.findUserById(userId);
        return orders;
    }

    @RequestMapping("/insertOrders.do")
    @ResponseBody
    public int insertOrders(String OrderPay, String OrderWuliu, double OrderAllMoney, int OrderWineId, int UserId, int WineId, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei) {
        System.out.printf("OrderYunfei:" + OrderYunfei);
        int result = ordersService.insertOrders(OrderPay, OrderWuliu, OrderAllMoney, OrderWineId, UserId, WineId, OrderTicket, OrderText, OrderScore, OrderYunfei);
        return result;
    }

}
