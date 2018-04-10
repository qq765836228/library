package com.xc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.xc.domain.Book;
import com.xc.vo.QueryVo;


@Service
public interface BookService {
		//添加图书
		public void bookInsert(Book book);
		//删除图书
		public void bookDelete(Integer book_id);
		//修改图书
		public void bookUpdate(Book book);
		//查询所有
		public QueryVo<Book> bookFindAll(QueryVo<Book> vo);
		//根据id查询
		public Book bookFindById(Integer book_id);
		//根据名称查询
		public List<Book> bookFindByName(String name);
		//根据ISBN查询
		public Book findByISBN(String isbn);
		//根据名称查询
		public List<Book> FindName(String name);
		//根据名称查询
	    public QueryVo<Book> findByBookName(QueryVo<Book> vo);
	
}
