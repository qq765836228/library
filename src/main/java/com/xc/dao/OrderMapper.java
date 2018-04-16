package com.xc.dao;

import java.util.List;

import com.xc.domain.Order;
import com.xc.vo.QueryVo;

public interface OrderMapper {
	//保存订单
	public void insertOrder(Order order);
	//查询所有借书订单
	public List<Order> orderFindAll(QueryVo<Order> vo);
	//查询总条数
	public Integer findCount();
	//更新订单状态
	public void updateIsreturn(Order order);
	//根据id查询所有
	public Order orderFindById(Integer order_id);
	//更新订单状态和时间
	public void update(Order order);
	public List<Order> orderfindAllByIsreturn(QueryVo<Order> vo);
	public Integer findCountByIsreturn();
	public List<Order> orderFindByIdcard(String user_idcard);
	public void deleteUser(String user_idcard);
}
