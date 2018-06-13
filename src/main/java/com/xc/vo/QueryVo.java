package com.xc.vo;

import java.util.List;

import com.xc.domain.Book;
import com.xc.domain.Order;
import com.xc.domain.User;

public class QueryVo<T> {
	
	private Integer currentPage;//当前页
	private Integer number;//每页条数
	private Integer totalNumber;//总条数
	private Integer totalPage;//总页数
	private Integer isreturn;
	private String book_name;
	private String user_idcard;
	
	private Book book;
	private User user;
	private Order order;
	
	private List<T> list;

	
	
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUser_idcard() {
		return user_idcard;
	}

	public void setUser_idcard(String user_idcard) {
		this.user_idcard = user_idcard;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Integer getIsreturn() {
		return isreturn;
	}

	public void setIsreturn(Integer isreturn) {
		this.isreturn = isreturn;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(Integer totalNumber) {
		this.totalNumber = totalNumber;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {	
		this.totalPage = totalPage ;	
	}
	
	
}
