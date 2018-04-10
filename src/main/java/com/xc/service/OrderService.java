package com.xc.service;

import org.springframework.stereotype.Service;

import com.xc.domain.Order;
import com.xc.vo.QueryVo;

@Service
public interface OrderService {

	public void insertOrder(Order order);

	public QueryVo<Order> orderFindAll(QueryVo<Order> vo);

}
