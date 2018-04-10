package com.xc.domain;

import java.util.Date;

/**
 * @author 熊超
 *
 */
public class Order {
	public Integer order_id;//借书订单编号
	public String user_idcard;//用户账号
	public String book_isbn;//图书isbn码
	
	public Date borrow_time;//借书时间  ，默认当前时间
	public Date return_time;//应还时间
	public Date is_return_time;//实际还书时间
	
	public Integer isreturn;//是否归还   0：未归还  1：已归还  
	
	public User user; //用户
	public Book book; //图书
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getUser_idcard() {
		return user_idcard;
	}
	public void setUser_idcard(String user_idcard) {
		this.user_idcard = user_idcard;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public Date getBorrow_time() {
		return borrow_time;
	}
	public void setBorrow_time(Date borrow_time) {
		this.borrow_time = borrow_time;
	}
	public Date getReturn_time() {
		return return_time;
	}
	public void setReturn_time(Date return_time) {
		this.return_time = return_time;
	}
	public Date getIs_return_time() {
		return is_return_time;
	}
	public void setIs_return_time(Date is_return_time) {
		this.is_return_time = is_return_time;
	}
	public Integer getIsreturn() {
		return isreturn;
	}
	public void setIsreturn(Integer isreturn) {
		this.isreturn = isreturn;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	
	
}
