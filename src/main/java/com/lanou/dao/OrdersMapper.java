package com.lanou.dao;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;

import java.util.List;

public interface OrdersMapper {
    //    查看订单
    public List<Orders> findOrders(Integer user_id);

    //是否提交订单，已买为1，没买为0
    public int shoped();

    //显示收货人地址
    public List<WuliuAdress> findWuliu(Integer user_id);

    //根据订单号找到订单中的商品
    public List<OrderAndWine> findWines(Integer order_id);

    //提交订单
    public int insertOrders(Orders orders);

    //插入订单中的商品
    public int insertWine(OrderAndWine orderAndWine);

    //插入地址
    public int insertAdress(WuliuAdress wuliuAdress);


}
