package com.lanou.dao;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;

import java.util.List;

public interface OrdersMapper {
    //    查看订单
    public List<Orders> findOrders(Integer user_id);

    public int findOrdersId(Integer user_id);

    //是否提交订单，已买为1，没买为0
    public int tijiaoDingdan(Integer user_id);

    //    购买次数
    public int GouwuCishu(Integer user_id, Integer ShifouZhifu);

    //    是否支付
    public int ShifouZhifu(Integer user_id);

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
