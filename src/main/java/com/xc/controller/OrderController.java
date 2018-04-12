package com.xc.controller;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xc.domain.Order;
import com.xc.service.OrderService;
import com.xc.vo.QueryVo;
@RequestMapping("/Order")
@Controller
public class OrderController {

	public OrderService orderService;
	@Autowired
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}


	/**
     * 添加借书订单
     * @param model
     * @return
     */
    @RequestMapping("/insertOrder")
    @ResponseBody
    public String insertOrder(String user_idcard,String book_isbn,Integer borrow_day){
    	Order order =new Order();
    	order.setBook_isbn(book_isbn);
    	order.setUser_idcard(user_idcard);
    	Date date=new Date();
    	order.setBorrow_time(date);
    	
	    Calendar rightNow = Calendar.getInstance();
	    rightNow.setTime(date);
//    	  rightNow.add(Calendar.YEAR,-1);//日期减1年
//    	  rightNow.add(Calendar.MONTH,3);//日期加3个月
    	rightNow.add(Calendar.DAY_OF_YEAR,borrow_day);//日期加10天
    	Date rdate=rightNow.getTime();
    	order.setReturn_time(rdate);
    	order.setIsreturn(0);
    	
    	orderService.insertOrder(order);
        return "0";
    }
    
    
    /**
	 * 查询所有借书订单
	 * @return
	 */
    @RequestMapping("/findAll/{currentPage}")
    public String findAll(@PathVariable("currentPage")Integer currentPage,HttpSession session){

    	QueryVo<Order> vo=new QueryVo<>();
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
    	QueryVo<Order> OrderVO = orderService.orderFindAll(vo);
    	session.setAttribute("OrderVO", OrderVO);
    	return "order";
    }
    /**
     * 跳转到图书归还页面
     * @param category
     * @return
     */
    @RequestMapping("/returnUI/{id}/{page}/{UIid}")
    public String returnUI(@PathVariable("id")Integer order_id,Model model,@PathVariable("page")Integer page,@PathVariable("UIid")Integer uid){
    	Order order=orderService.orderFindById(order_id);
    	order.setIs_return_time(new Date());
    	model.addAttribute("order", order);
    	model.addAttribute("page", page);
    	model.addAttribute("uid", uid);
    	return "return";
    }
    /**
     * 图书归还
     * @param category
     * @return
     */
    @RequestMapping("/returnBook")
    @ResponseBody
    public String returnBook(Integer order_id,Model model,Integer page){
    	Order order=orderService.orderFindById(order_id);
    	order.setIsreturn(2);
    	order.setIs_return_time(new Date());
    	orderService.update(order);
    	
    	return ""+page;
    }
    /**
     * 跳转到图书续借页面
     * @param category
     * @return
     */
    @RequestMapping("/renewUI/{id}/{page}/{isreturn}/{UIid}")
    public String renewUI(@PathVariable("id")Integer order_id,Model model,@PathVariable("page")Integer page,@PathVariable("isreturn")Integer isreturn,@PathVariable("UIid")Integer uid){
    	Order order=orderService.orderFindById(order_id);
    	if(isreturn==0){
    		model.addAttribute("order", order);
    	}if(isreturn==1){
    		Date d0=new Date();
    		Date d1=order.getReturn_time();
    		long time0=d0.getTime();
    		long time1=d1.getTime();
    		Long day=(time0-time1)/(1000*60*60*24);
    		model.addAttribute("day", day);
    		model.addAttribute("order", order);
    	}
    	model.addAttribute("page", page);
    	model.addAttribute("uid", uid);
    	return "renew";
    }
    
    /**
     * 图书归还
     * @param category
     * @return
     */
    @RequestMapping("/renewBook")
    @ResponseBody
    public String renewBook(Integer order_id,Model model,Integer reday,Integer page){
    	Order order=orderService.orderFindById(order_id);
    	if(order.getIsreturn()==1){
    		order.setIsreturn(0);   		
    	}
    	Calendar rightNow = Calendar.getInstance();
	    rightNow.setTime(order.getReturn_time());
    	rightNow.add(Calendar.DAY_OF_YEAR,reday);//日期加10天
    	Date rdate=rightNow.getTime();
    	order.setReturn_time(rdate);
    	orderService.update(order);
    	
    	return ""+page;
    }
    /**
	 * 查询所有超时借书订单
	 * @return
	 */
    @RequestMapping("/findAllByIsreturn/{isreturn}/{currentPage}")
    public String findAllByIsreturn(@PathVariable("currentPage")Integer currentPage,@PathVariable("isreturn")Integer isreturn,HttpSession session){

    	QueryVo<Order> vo=new QueryVo<>();
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
    	vo.setIsreturn(isreturn);
    	QueryVo<Order> OrderVO = orderService.orderfindAllByIsreturn(vo);
    	session.setAttribute("OrderVO", OrderVO);
    	return "outorder";
    }
}
