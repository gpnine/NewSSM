package com.lanou.service.impl;

import com.lanou.dao.OrdersMapper;
import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;
import com.lanou.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersMapper ordersMapper;


    public List<Orders> findOrders(Integer user_id) {
        return ordersMapper.findOrders(user_id);
    }

    public int insertAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, int user_id) {
        WuliuAdress wuliuAdress = new WuliuAdress();
        wuliuAdress.setShouhuoName(ShouhuoName);
        wuliuAdress.setShouhuoAdress(ShouhuoAdress);
        wuliuAdress.setXiangxiAdress(XiangxiAdress);
        wuliuAdress.setShouhuoPhone(ShouhuoPhone);
        wuliuAdress.setUser_id(user_id);
        return ordersMapper.insertAdress(wuliuAdress);
    }

    public List<WuliuAdress> findWuliu(Integer user_id) {
        System.out.println(user_id);
        System.out.println(ordersMapper.findWuliu(user_id));
        return ordersMapper.findWuliu(user_id);
    }

    public int insertOrders(String OrderPay, double OrderAllMoney, int UserId, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei) {
        Orders orders = new Orders();
        orders.setOrderPay(OrderPay);
        orders.setOrderAllMoney(OrderAllMoney);
        orders.setUserId(UserId);
        orders.setOrderTicket(OrderTicket);
        orders.setOrderText(OrderText);
        orders.setOrderScore(OrderScore);
        orders.setOrderYunfei(OrderYunfei);
        int result = ordersMapper.insertOrders(orders);
        return result;

    }

    public int insertWine(int order_id, int wine_id, int wine_count) {
        OrderAndWine orderAndWine = new OrderAndWine();
        orderAndWine.setOrder_id(order_id);
        orderAndWine.setWine_id(wine_id);
        orderAndWine.setWine_count(wine_count);
        return ordersMapper.insertWine(orderAndWine);
    }

    //显示收货人地址信息
//    public int selectWuliu(Integer user_id) {
//        return ordersMapper.selectWuliu(user_id);
//    }

    public List<OrderAndWine> findWines(Integer order_id) {
        return ordersMapper.findWines(order_id);
    }
}
