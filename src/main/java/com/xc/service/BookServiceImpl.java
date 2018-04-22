package com.xc.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.BookMapper;
import com.xc.dao.CategoryMapper;
import com.xc.domain.Book;
import com.xc.domain.Category;
import com.xc.vo.QueryVo;
@Service
public class BookServiceImpl implements BookService{

	private BookMapper bookMapper;
	@Autowired
	public void setBookMapper(BookMapper bookMapper) {
		this.bookMapper = bookMapper;
	}
	@Autowired
	private CategoryMapper categoryMapper;
	

	@Override
	public void bookInsert(Book book) {
		List<Book> list = bookMapper.findByCid(book.getCategory_id());
		if(list.size() == 0){
			Category c = categoryMapper.getById(book.getCategory_id());
			c.setCategory_state(1);
			categoryMapper.update(c);
		}
		
		bookMapper.bookInsert(book);
	}

	@Override
	public void bookDelete(Integer book_id) {
		Book book=bookMapper.bookFindById(book_id);	
		bookMapper.bookDelete(book_id);
		List<Book> list = bookMapper.findByCid(book.getCategory_id());	
		if(list.size() == 0){
			Category c = categoryMapper.getById(book.getCategory_id());
			c.setCategory_state(0);
			categoryMapper.update(c);
		}
	}

	@Override
	public void bookUpdate(Book book) {
		Book book1=bookMapper.findByISBN(book.getBook_isbn());
		Integer cid=book.getCategory_id();
		List<Book> list = bookMapper.findByCid(cid);
		if(list.size() == 0){
			Category c = categoryMapper.getById(cid);
			c.setCategory_state(1);
			categoryMapper.update(c);
		}
		
		bookMapper.bookUpdate(book);		
		List<Book> list2 = bookMapper.findByCid(book1.getCategory_id());	
		if(list2.size() == 0){
			Category c = categoryMapper.getById(book1.getCategory_id());
			c.setCategory_state(0);
			categoryMapper.update(c);
		}
	}

	@Override
	public QueryVo<Book> bookFindAll(QueryVo<Book> vo) {
		List<Book> list = bookMapper.bookFindAll(vo);		
		Integer count = bookMapper.findCount(vo);
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
		return list;
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

	@Override
	public List<Book> findByCid(Integer id) {
		return bookMapper.findByCid(id);
	}

	@Override
	public List<Book> findAllCid() {
		return bookMapper.findAllCid();
	}

}
