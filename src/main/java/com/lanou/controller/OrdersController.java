package com.lanou.controller;

import com.lanou.entity.Orders;
import com.lanou.service.OrdersService;
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

    @RequestMapping("/findOrders.do")
    @ResponseBody
    public List<Orders> findOrders() {
         List<Orders> orders = ordersService.findOrders();
        return orders;
    }
}
