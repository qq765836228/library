package com.xc.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.BookMapper;
import com.xc.dao.OrderMapper;
import com.xc.dao.UserMapper;
import com.xc.domain.Book;
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
	@Autowired
	public BookMapper bookMapper;
	
	public UserMapper userMapper;
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	@Override
	public void insertOrder(Order order) {
		Book book = bookMapper.findByISBN(order.getBook_isbn());
		book.setBook_state(1);
		book.setBook_borrownum(book.getBook_borrownum()+1);
		bookMapper.bookUpdate(book);		
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
		Integer count = orderMapper.findCount(vo);
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


	@Override
	public void update(Order order) {
		Book book = bookMapper.findByISBN(order.getBook_isbn());
		book.setBook_state(0);
		bookMapper.bookUpdate(book);		
		orderMapper.update(order);
	}


	@Override
	public QueryVo<Order> orderfindAllByIsreturn(QueryVo<Order> vo) {
		List<Order> list1 = orderMapper.orderFindAll(vo);
		for(Order s: list1) {
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
		List<Order> list = orderMapper.orderfindAllByIsreturn(vo);		
		Integer count = orderMapper.findCountByIsreturn();
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
	public List<Order> orderFindByIdCard(String id_card) {		
		return orderMapper.orderFindByIdcard(id_card);
	}


	@Override
	public QueryVo<Order> orderFindByIdCard2(QueryVo<Order> vo) {
		List<Order> list = orderMapper.orderFindByIdcard2(vo);
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
		Integer count = orderMapper.findCountByIdCard(vo);
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
	public Integer checkNum(QueryVo<Order> vo) {
		return orderMapper.checkNum(vo);
	}

}
