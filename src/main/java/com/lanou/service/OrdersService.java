package com.lanou.service;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;

import java.util.List;

public interface OrdersService {

    public List<Orders> findOrders(Integer user_id);

    public int updateOrders(String OrderPay, double OrderAllMoney, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei);

    public int weiZhifu(int user_id);

    public int insertOrder(Integer user_id);

    public int insertAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, int user_id);

    public List<WuliuAdress> findWuliu(Integer user_id);

    public int insertWine(int order_id, int wine_id, int wine_count);

    public List<OrderAndWine> findWines(Integer order_id);

    public int tijiaoDingdan(Integer user_id);

    public int findOrdersId(Integer user_id);
//    public int selectWuliu(Integer user_id);
}
