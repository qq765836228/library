package com.xc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.OrderMapper;
import com.xc.domain.Order;
import com.xc.vo.QueryVo;

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


	@Override
	public QueryVo<Order> orderFindAll(QueryVo<Order> vo) {
		List<Order> list = orderMapper.orderFindAll(vo);
		for(Order s: list) {
			  if(s.getIsreturn()==1){
				  
			}
		}
		Integer count = orderMapper.findCount();
		vo.setList(list);
		vo.setTotalNumber(count);	
		Integer n = vo.getNumber();
		if(count%n==0){
			vo.setTotalPage(count/n);
		}else{
			vo.setTotalPage(count/n+1);
		}
		return vo;
	}

}
