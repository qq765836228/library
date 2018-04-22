package com.xc.controller;

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
@RequestMapping("/Category")
public class CategoryController {

	private CategoryService categoryService;
    @Autowired
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
    @Autowired
    private BookService bookService;
    /**
     * 添加分类
     * @param category
     * @return
     */
	@RequestMapping("/addCategory")
	@ResponseBody
    public String create(Category category){
		String msg="";
		if(category.getCategory_name()==null || category.getCategory_name()== "" ){
			msg+="0";
		}
		else if(category.getCategory_case()==null || category.getCategory_case()== "" ){
			msg+="1";
		}
		else{
			categoryService.addCategory(category);
			msg+="2";
		}
    	return msg;
    }
	/**
	 * 查询所有分类
	 * @param currentPage
	 * @param session
	 * @return
	 */
    @RequestMapping("/findAll/{currentPage}")
	public String findCategoryAll(@PathVariable("currentPage")Integer currentPage,Model model){
		
    	QueryVo<Category> vo=new QueryVo<>();
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
    	QueryVo<Category> Cvo = categoryService.findCategoryAll(vo);
    	model.addAttribute("CVO", Cvo);
		return "category";
	}
    /**
     * 根据名称查分类
     * 判断是否已经存在
     * @param category
     * @return
     */
	@RequestMapping("/checkCategory")
	@ResponseBody
    public String checkCategory(String category_name){
    	Category c=categoryService.findByName(category_name);
    	if(c != null){
    		return "0";
    	}
    	return "1";
    }
	/**
	 * 删除分类
	 * @param currentPage
	 * @param session
	 * @return
	 */
    @RequestMapping("/delete/{id}/{number}/{page}")
	public String delete(@PathVariable("id")Integer id,@PathVariable("number")Integer number,@PathVariable("page")Integer page,HttpSession session){
    	
    	List<Book> list=bookService.findByCid(id);
    	if(list.size() == 0){
    		categoryService.delete(id);
    	}
		if(number%10 == 1 && number > 10 ){
			return "redirect:/Category/findAll/"+(page-1);
		}
		return "redirect:/Category/findAll/"+page;
	}
    /**
     * 根据id查分类
     * @param category
     * @return
     */
    @RequestMapping("/editUI/{id}/{page}")
    public String editUI(@PathVariable("id")Integer id,Model model,@PathVariable("page")Integer page){
    	Category category = categoryService.getById(id);
    	model.addAttribute("category", category);
    	model.addAttribute("page", page);
    	return "categoryedit";
    }
    /**
     * 修改分类
     * @param category
     * @return
     */
    @RequestMapping("/editCategory/{page}")
    public String editCategory(Category category,@PathVariable("page")Integer page){  	
    	categoryService.update(category);	
    	return "redirect:/Category/findAll/"+page;
    }
}
