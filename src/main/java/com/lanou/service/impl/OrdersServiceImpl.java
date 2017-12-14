package com.lanou.service.impl;

import com.lanou.dao.OrdersMapper;
import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;
import com.lanou.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersMapper ordersMapper;

    public List<Orders> findOrders(String userPhone) {
        return ordersMapper.findOrders(userPhone);
    }

    public int insertAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, String userPhone) {
        WuliuAdress wuliuAdress = new WuliuAdress();
        wuliuAdress.setShouhuoName(ShouhuoName);
        wuliuAdress.setShouhuoAdress(ShouhuoAdress);
        wuliuAdress.setXiangxiAdress(XiangxiAdress);
        wuliuAdress.setShouhuoPhone(ShouhuoPhone);
        wuliuAdress.setShouhuoPhone(ShouhuoPhone);
        return ordersMapper.insertAdress(wuliuAdress);
    }

    public List<WuliuAdress> findWuliu(String userPhone) {
        System.out.println(userPhone);
        System.out.println(ordersMapper.findWuliu(userPhone));
        return ordersMapper.findWuliu(userPhone);
    }

    public int updateOrders(String OrderPay, double OrderAllMoney, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei, int Adress_id, String UserPhone) {
        Orders orders = new Orders();
        orders.setOrderPay(OrderPay);
        orders.setOrderAllMoney(OrderAllMoney);
        orders.setOrderTicket(OrderTicket);
        orders.setOrderText(OrderText);
        orders.setOrderScore(OrderScore);
        orders.setOrderYunfei(OrderYunfei);
        orders.setAdress_id(Adress_id);
        orders.setUserPhone(UserPhone);
        int result = ordersMapper.updateOrders(orders);
        return result;

    }

    public Orders findAdressId(int order_id) {
        return ordersMapper.findAdressId(order_id);
    }

    public Orders weiZhifu(String userPhone) {
        System.out.println(ordersMapper.weiZhifu(userPhone));
        return ordersMapper.weiZhifu(userPhone);
    }

    public int insertOrder(String userPhone) {
        return ordersMapper.insertOrder(userPhone);
    }

    public int insertWine(int order_id, int wine_id, int wine_count) {
        OrderAndWine orderAndWine = new OrderAndWine();
        orderAndWine.setOrder_id(order_id);
        orderAndWine.setWine_id(wine_id);
        orderAndWine.setWine_count(wine_count);
        return ordersMapper.insertWine(orderAndWine);
    }

    public WuliuAdress findByxId(Integer xId) {
        return ordersMapper.findByxId(xId);
    }

    public int UpdateAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, Integer xId) {
        WuliuAdress wuliuAdress = new WuliuAdress();
        wuliuAdress.setShouhuoName(ShouhuoName);
        wuliuAdress.setShouhuoAdress(ShouhuoAdress);
        wuliuAdress.setXiangxiAdress(XiangxiAdress);
        wuliuAdress.setShouhuoPhone(ShouhuoPhone);
        wuliuAdress.setxId(xId);
        return ordersMapper.UpdateAdress(wuliuAdress);
    }

    public List<OrderAndWine> findWines(Integer order_id) {
        return ordersMapper.findWines(order_id);
    }
}
