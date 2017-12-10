package com.lanou.dao;


import com.lanou.entity.Orders;


import java.util.List;

public interface OrdersMapper {
    public List<Orders> findOrders();
    public int insertOrders(Orders orders);

}
