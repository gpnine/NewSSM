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
}
