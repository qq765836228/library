package com.xc.domain;

import java.util.Date;

public class Book {
	private Integer book_id;//图书id
	private String book_name;//图书名称
	private String book_isbn;//图书ISBN编码
	private Integer category_id;//分类id
	
	private String book_autor;//图书作者
	private String book_pubhouse;//图书出版社
	private String book_page;//图书页数
	
	private Integer book_state;//图书状态 0：正常  1：被借出  2：丢失
	private Date book_inDate;//入馆时间
	private Integer book_borrownum;//被借次数

	private String others;//备注
	private Category category;//分类
	public Integer getBook_id() {
		return book_id;
	}
	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public String getBook_autor() {
		return book_autor;
	}
	public void setBook_autor(String book_autor) {
		this.book_autor = book_autor;
	}
	public String getBook_pubhouse() {
		return book_pubhouse;
	}
	public void setBook_pubhouse(String book_pubhouse) {
		this.book_pubhouse = book_pubhouse;
	}
	public String getBook_page() {
		return book_page;
	}
	public void setBook_page(String book_page) {
		this.book_page = book_page;
	}
	public Integer getBook_state() {
		return book_state;
	}
	public void setBook_state(Integer book_state) {
		this.book_state = book_state;
	}
	public Date getBook_inDate() {
		return book_inDate;
	}
	public void setBook_inDate(Date book_inDate) {
		this.book_inDate = book_inDate;
	}
	public Integer getBook_borrownum() {
		return book_borrownum;
	}
	public void setBook_borrownum(Integer book_borrownum) {
		this.book_borrownum = book_borrownum;
	}
	public String getOthers() {
		return others;
	}
	public void setOthers(String others) {
		this.others = others;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((book_name == null) ? 0 : book_name.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (book_name == null) {
			if (other.book_name != null)
				return false;
		} else if (!book_name.equals(other.book_name))
			return false;
		return true;
	}
	
}
