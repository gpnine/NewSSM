package com.lanou.dao;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;

import java.util.List;

public interface OrdersMapper {
    public List<Orders> findOrders(Integer user_id);
    public int shoped();

    public List<WuliuAdress> findWuliu(Integer user_id);

    public List<OrderAndWine> findWines(Integer order_id);

    public int insertOrders(Orders orders);

    public int insertWine(OrderAndWine orderAndWine);

    public int insertAdress(WuliuAdress wuliuAdress);



}
