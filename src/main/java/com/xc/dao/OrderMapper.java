package com.xc.dao;

import java.util.List;

import com.xc.domain.Order;
import com.xc.vo.QueryVo;

public interface OrderMapper {
	//保存订单
	public void insertOrder(Order order);

	public List<Order> orderFindAll(QueryVo<Order> vo);

	public Integer findCount();
	
}
