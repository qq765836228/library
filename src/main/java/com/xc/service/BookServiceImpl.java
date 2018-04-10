package com.xc.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.BookMapper;
import com.xc.domain.Book;
import com.xc.vo.QueryVo;
@Service
public class BookServiceImpl implements BookService{

	private BookMapper bookMapper;
	@Autowired
	public void setBookMapper(BookMapper bookMapper) {
		this.bookMapper = bookMapper;
	}

	@Override
	public void bookInsert(Book book) {
		bookMapper.bookInsert(book);
	}

	@Override
	public void bookDelete(Integer book_id) {
		bookMapper.bookDelete(book_id);
	}

	@Override
	public void bookUpdate(Book book) {
		bookMapper.bookUpdate(book);
	}

	@Override
	public QueryVo<Book> bookFindAll(QueryVo<Book> vo) {
		List<Book> list = bookMapper.bookFindAll(vo);
		Integer count = bookMapper.findCount();
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
	public Book bookFindById(Integer book_id) {
		return bookMapper.bookFindById(book_id);
	}

	@Override
	public List<Book> bookFindByName(String name) {
		List<Book> list=bookMapper.bookFindByName(name);
		list=new ArrayList<Book>(new HashSet<Book>(list));
		return bookMapper.bookFindByName(name);
	}
	@Override
	public List<Book> FindName(String name) {
		return bookMapper.bookFindByName(name);
	}
	@Override
	public QueryVo<Book> findByBookName(QueryVo<Book> vo){
		List<Book> list =bookMapper.findByBookName(vo);
		Integer count = bookMapper.findCount2(vo);
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
	public Book findByISBN(String isbn) {
		return bookMapper.findByISBN(isbn);
	}

}
