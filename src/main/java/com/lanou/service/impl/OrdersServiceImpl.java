package com.lanou.service.impl;

import com.lanou.dao.OrdersMapper;
import com.lanou.entity.Orders;
import com.lanou.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersMapper ordersMapper;

	public List<Orders> findOrders() {
		return ordersMapper.findOrders();
	}

	public int insertOrders(String OrderPay, String OrderWuliu, double OrderAllMoney, int OrderWineId, int UserId, int WineId, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei) {
		Orders orders = new Orders();
		orders.setOrderPay(OrderPay);
		orders.setOrderWuliu(OrderWuliu);
		orders.setOrderAllMoney(OrderAllMoney);
		orders.setOrderWineId(OrderWineId);
		orders.setUserId(UserId);
		orders.setWineId(WineId);
		orders.setOrderTicket(OrderTicket);
		orders.setOrderText(OrderText);
		orders.setOrderScore(OrderScore);
		orders.setOrderYunfei(OrderYunfei);
		int result = ordersMapper.insertOrders(orders);
		return result;

	}
}
