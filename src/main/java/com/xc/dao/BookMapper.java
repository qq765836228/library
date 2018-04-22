package com.xc.dao;

import java.util.List;

import com.xc.domain.Book;
import com.xc.vo.QueryVo;

public interface BookMapper{
	//添加图书
	public void bookInsert(Book book);
	//删除图书
	public void bookDelete(Integer book_id);
	//修改图书
	public void bookUpdate(Book book);
	//查询所有
	public List<Book> bookFindAll(QueryVo<Book> vo);
	//查询总条数
	public Integer findCount(QueryVo<Book> vo);
	//根据id查询
	public Book bookFindById(Integer book_id);
	//根据名称查询
	public List<Book> bookFindByName(String name);
	//根据ISBN查询
	public Book findByISBN(String isbn);
	//根据名称查询
	public List<Book> FindName(String name);
	//根据名称查询
	public List<Book> findByBookName(QueryVo<Book> vo);
	//查询总条数
	public Integer findCount2(QueryVo<Book> vo);
	public List<Book> findByCid(Integer category_id);
	public List<Book> findAllCid();
}
