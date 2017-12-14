package com.lanou.service;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface OrdersService {

    public List<Orders> findOrders(String userPhone);

    public WuliuAdress findByxId(Integer xId);

    public int updateOrders(String OrderPay, double OrderAllMoney, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei, int Adress_id,String UserPhone);

    public Orders findAdressId(int order_id);

    public Orders weiZhifu(String userPhone);

    public int UpdateAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, Integer xId);

    public int insertOrder(String userPhone);

    public int insertAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, String userPhone);

    public List<WuliuAdress> findWuliu(String userPhone);

    public int insertWine(int order_id, int wine_id, int wine_count);

    public List<OrderAndWine> findWines(Integer order_id);

}
