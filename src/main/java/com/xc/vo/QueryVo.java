package com.xc.vo;

import java.util.List;

public class QueryVo<T> {
	
	private Integer currentPage;//当前页
	private Integer number;//每页条数
	private Integer totalNumber;//总条数
	private Integer totalPage;//总页数
	private Integer isreturn;
	private String book_name;

	private List<T> list;

	
	
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
