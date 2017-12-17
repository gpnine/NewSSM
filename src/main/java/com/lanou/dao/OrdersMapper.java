package com.lanou.dao;


import com.lanou.entity.OrderAndWine;
import com.lanou.entity.Orders;
import com.lanou.entity.WuliuAdress;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface OrdersMapper {
    //    查看订单
    public List<Orders> findOrders(String userPhone);

    public Orders findAdressId(Integer order_id);

    public Orders findAllMoney(String userPhone);

    public WuliuAdress findByxId(Integer xId);

    //    是否支付
    public int ShifouZhifu(String userPhone);

    //    修改地址
    public int UpdateAdress(WuliuAdress wuliuAdress);

    public int DeleteAdress(Integer xId);

    //显示收货人地址
    public List<WuliuAdress> findWuliu(String userPhone);

    //    查找用户未支付的账单id
    public Orders weiZhifu(String userPhone);

    public List<Orders> yiZhifu(String userPhone);

    //根据订单号找到订单中的商品
    public List<OrderAndWine> findWines(Integer order_id);

    //提交订单
    public int updateOrders(Orders orders);

    public int insertOrder(String userPhone);

    //插入订单中的商品
    public int insertWine(OrderAndWine orderAndWine);

    //插入地址
    public int insertAdress(WuliuAdress wuliuAdress);

    public List<Orders> dingdan();

}
