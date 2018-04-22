package com.xc.domain;

import java.util.List;

/**
 * @author 熊超
 *
 */
public class Category {
	//分类id
	private Integer category_id;
	//分类名称
	private String category_name;
	//分类书架
	private String category_case;
	
	private Integer category_state;
	
	
	private List<Book> books;
	
	public Category(){
		super();
	}
	public Category(int category_id,String category_name,String category_case,List<Book> books){
		super();
		this.category_id=category_id;
		this.category_name=category_name;
		this.category_case=category_case;
		this.books=books;
	}
	
	
	
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}



	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_case() {
		return category_case;
	}
	public void setCategory_case(String category_case) {
		this.category_case = category_case;
	}
	
	public Integer getCategory_state() {
		return category_state;
	}
	public void setCategory_state(Integer category_state) {
		this.category_state = category_state;
	}
	@Override
	public String toString() {
		return "Category [category_id=" + category_id + ", category_name=" + category_name + ", category_case="
				+ category_case + ", books=" + books + "]";
	}
	
	
}
