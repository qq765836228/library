package com.xc.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xc.domain.Book;
import com.xc.domain.Category;
import com.xc.service.BookService;
import com.xc.service.CategoryService;
import com.xc.vo.QueryVo;

@Controller
@RequestMapping("/Book")
public class BookController {

	private BookService bookService;
	private CategoryService categoryService;
    @Autowired
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	} 
    @Autowired
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	/**
	 * 查询所有图书
	 * @return
	 */
    @RequestMapping("/findAll/{currentPage}")
    public String bookUI(@PathVariable("currentPage")Integer currentPage,Model model,Book book){

    	QueryVo<Book> vo=new QueryVo<>();
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
    	vo.setBook(book);
    	QueryVo<Book> Bvo = bookService.bookFindAll(vo);
    	model.addAttribute("BVO", Bvo);
    	QueryVo<Category> qvo=new QueryVo<Category>();
    	QueryVo<Category> Cvo = categoryService.findCategoryAll(qvo);
    	model.addAttribute("CVO", Cvo);
    	return "book";
    }
    /**
     * 跳转到添加图书页面
     * @param model
     * @return
     */
    @RequestMapping("/bookAddUI")
    public String bookAddUI(Model model){
    	QueryVo<Category> qvo=new QueryVo<Category>();
    	QueryVo<Category> vo = categoryService.findCategoryAll(qvo);
    	model.addAttribute("CVO", vo);
    	return "bookAdd";
    }
    /**
     * 跳转到添加图书页面
     * @param model
     * @return
     */
    @RequestMapping("/findByISBN")
    @ResponseBody
    public String findByISBN(String book_isbn){
        Book book=bookService.findByISBN(book_isbn);
        if(book != null && book.getBook_state()==0){
        	return "1";
        }
    	return "0";
    }
    /**
     * 添加图书
     * @param model
     * @return
     */
    @RequestMapping("/addBook")
    @ResponseBody
    public String addBook(Book book){
    	book.setBook_inDate(new Date());
    	book.setBook_borrownum(0);
    	book.setBook_state(0);
        bookService.bookInsert(book);
    	return "0";
    }
    /**
	 * 删除图书
	 * @param currentPage
	 * @param session
	 * @return
	 */
    @RequestMapping("/delete/{id}/{number}/{page}")
	public String delete(@PathVariable("id")Integer id,@PathVariable("number")Integer number,@PathVariable("page")Integer page,HttpSession session){
		bookService.bookDelete(id);
		if(number%10 == 1 && number > 10 ){
			return "redirect:/Book/findAll/"+(page-1);
		}
		return "redirect:/Book/findAll/"+page;
	}
    /**
     * 跳转到图书修改页面
     * @param category
     * @return
     */
    @RequestMapping("/editUI/{id}/{page}")
    public String editUI(@PathVariable("id")Integer id,Model model,@PathVariable("page")Integer page){
    	Book book=bookService.bookFindById(id);
    	model.addAttribute("book", book);
    	model.addAttribute("page", page);
    	QueryVo<Category> qvo=new QueryVo<Category>();
    	QueryVo<Category> vo = categoryService.findCategoryAll(qvo);
    	model.addAttribute("CVO", vo);
    	return "bookedit";
    }
    /**
     * 修改图书
     * @param category
     * @return
     */
    @RequestMapping("/editBook/{page}")
    @ResponseBody
    public String editBook(Book book,@PathVariable("page")Integer page){
    	Book book1=bookService.findByISBN(book.getBook_isbn());
    	book.setBook_state(book1.getBook_state());
    	book.setBook_borrownum(book1.getBook_borrownum());
    	bookService.bookUpdate(book);
    	
    	return ""+page;
    }
    /**
     * 跳转到图书添加第二页面
     * @param category
     * @return
     */
    @RequestMapping("/addTwo/{id}")
    public String addTwo(@PathVariable("id")Integer id,Model model){
    	Book book=bookService.bookFindById(id);
    	model.addAttribute("book", book);
    	QueryVo<Category> qvo=new QueryVo<Category>();
    	QueryVo<Category> vo = categoryService.findCategoryAll(qvo);
    	model.addAttribute("CVO", vo);
    	return "bookAdd2";
    }
    /**
     * 根据名字模糊查询所有
     * @param book_name
     * @return
     */
    @RequestMapping("/findByName")
    @ResponseBody
    public List<Book> findByName(String book_name){
    	List<Book> list = bookService.bookFindByName(book_name);
 
    	return list;
    }
    @RequestMapping("/findByBookName/{name}/{currentPage}")
    public String findByBookName(@PathVariable("currentPage")Integer currentPage,@PathVariable("name")String  name,Model model){
    	QueryVo<Book> vo=new QueryVo<>();
    	vo.setBook_name(name);
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
    	vo = bookService.findByBookName(vo);
    	
    	model.addAttribute("BVO", vo);
    	model.addAttribute("name", name);
    	return "quickSearch";
    }
}
