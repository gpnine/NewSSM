package com.lanou.service;


import com.lanou.entity.Orders;

import java.util.List;

public interface OrdersService {

    public List<Orders> findOrders();
    public int insertOrders(String OrderPay,String OrderWuliu,double OrderAllMoney,int OrderWineId,int UserId,int WineId,String OrderTicket,String OrderText,int OrderScore,double OrderYunfei);

}
