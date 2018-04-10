package com.xc.controller;

import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	 * 查询所有图书
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
}
