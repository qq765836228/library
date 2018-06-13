package com.xc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.xc.domain.Order;
import com.xc.vo.QueryVo;

@Service
public interface OrderService {

	public void insertOrder(Order order);

	public QueryVo<Order> orderFindAll(QueryVo<Order> vo);

	public Order orderFindById(Integer order_id);

	public void updateIsreturn(Order order);

	public void update(Order order);

	public QueryVo<Order> orderfindAllByIsreturn(QueryVo<Order> vo);

	public List<Order> orderFindByIdCard(String id_card);

	public QueryVo<Order> orderFindByIdCard2(QueryVo<Order> vo);

	public Integer checkNum(QueryVo<Order> vo);

}
