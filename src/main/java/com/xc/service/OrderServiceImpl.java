package com.xc.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.OrderMapper;
import com.xc.dao.UserMapper;
import com.xc.domain.Order;
import com.xc.domain.User;
import com.xc.vo.QueryVo;

@Service
public class OrderServiceImpl implements OrderService {
	
	public OrderMapper orderMapper;
	@Autowired
	public void setOrderMapper(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}
	public UserMapper userMapper;
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	@Override
	public void insertOrder(Order order) {
		orderMapper.insertOrder(order);	
	}


	@Override
	public QueryVo<Order> orderFindAll(QueryVo<Order> vo) {
		List<Order> list = orderMapper.orderFindAll(vo);
		for(Order s: list) {
			  if(s.getIsreturn()==0){
				Date date=new Date();
				Date return_time = s.getReturn_time();
				if(date.after(return_time)){
					s.setIsreturn(1);
					orderMapper.updateIsreturn(s);
					User user = userMapper.findByIdcard(s.user_idcard);
					user.setUser_error(user.getUser_error()+1);				
					userMapper.updateUser_error(user);
				}
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


	@Override
	public Order orderFindById(Integer order_id) {		
		return orderMapper.orderFindById(order_id);
	}


	@Override
	public void updateIsreturn(Order order) {
		orderMapper.updateIsreturn(order);
	}

}
