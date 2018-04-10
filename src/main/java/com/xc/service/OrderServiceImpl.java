package com.xc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.OrderMapper;
import com.xc.domain.Order;

@Service
public class OrderServiceImpl implements OrderService {
	
	public OrderMapper orderMapper;
	@Autowired
	public void setOrderMapper(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}


	@Override
	public void insertOrder(Order order) {
		orderMapper.insertOrder(order);	
	}

}
