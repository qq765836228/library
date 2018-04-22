package com.xc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xc.domain.Order;
import com.xc.domain.User;
import com.xc.service.OrderService;
import com.xc.service.UserService;
import com.xc.vo.QueryVo;

@Controller
@RequestMapping("/User")
public class UserController {
	
	
	private UserService userService;
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Autowired
	private OrderService orderService;
	/**
	 * 登陆验证
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/checks")
	@ResponseBody
		public  String loginCheck(User user)throws IOException{
			User uu= userService.loginCheck(user);			    
			if(uu!=null){ 
				if(uu.getUser_state()==1){
					String str = uu.getUser_id().toString();
					   return str;
				}
				if(uu.getUser_state()==0){
					return "s2";
				}
			} 
			return "0"; 
		}
	/**
	 * 跳转到主页
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/indexUI/{id}")
		public  String indexUI(@PathVariable("id")Integer user_id,HttpSession session )throws IOException{
		    User user = userService.findUserById(user_id);
			session.setAttribute("USER", user);
			return "../../user/jsp/index"; 
		}
	/**
	 * 查找用户订单
	 * @param id_card
	 * @param session
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/findOrder/{id_card}")
	public  String findOrder(@PathVariable("id_card")String id_card,Model model )throws IOException{
	     List<Order> OVO=orderService.orderFindByIdCard(id_card);
	     model.addAttribute("OVO", OVO);
		return "../../user/jsp/index"; 
	}
	/**
	 * 注册验证
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/check2")
	@ResponseBody
		public  String check2(HttpServletRequest request)throws IOException{
		 	String username=request.getParameter("username");
			User uu= userService.checkUsername(username);			    
			if(uu!=null){ 
			   return "1";
			} 
			return "0"; 
		}

	/**
	 * 查找所有信息
	 * @return
	 */
	@RequestMapping("/findAll/{currentPage}")
	public String findAll(Model model,@PathVariable("currentPage")Integer currentPage){
		QueryVo<User> vo=new QueryVo<>();
    	vo.setCurrentPage(currentPage-1);
    	vo.setNumber(10);
		 vo=userService.findAll(vo);
		model.addAttribute("UVO", vo);
		return "user";
	}

	/**
	 * 跳转到修改页面
	 * @return
	 */
	@RequestMapping("/updateUI/{id}")
	public String updateUI(@PathVariable("id")String id,Model model){
		Integer ids=Integer.parseInt(id);
		User user = userService.findUserById(ids);
		model.addAttribute("user", user);
		return "jsp/edit";
	}
	/**
	 * 跳转到修改页面
	 * @return
	 */
	@RequestMapping("/edit")
	public String edit(User user,HttpSession session){
		User user1 = userService.findByIdcard(user.getUser_idcard());
		user1.setUser_password(user.getUser_password());
		userService.updateUser(user1);
		session.setAttribute("USER", user1);
		return "../../user/jsp/index";
	}
	/**
	 * 更新用户信息
	 * @param user
	 * @return
	 * @throws ParseException 
	 */
	@RequestMapping("/update")
	public String update(String Date2,User user,Model model) throws ParseException{		
		Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(Date2);
		user.setUser_inDate(date2);
		userService.updateUser(user);
		return "redirect:/login/findAll";
	}
	/**
	 * 退出登陆
	 * @param httpSession
	 * @return
	 */
	@RequestMapping("/loginOut")
	public String logout(HttpSession session){
		session.removeAttribute("USER");
		session.removeAttribute("OrderVO");
		return "../../user/jsp/index";
	}
	/**
     * 判断用户
     * @param model
     * @return
     */
    @RequestMapping("/findByIdcard")
    @ResponseBody
    public String findByIdcard(String user_idcard){
    	User user=userService.findByIdcard(user_idcard);
        if(user != null && user.getUser_state()==1){
        	return "1";
        }
    	return "0";
    }
    /**
     * 判断用户
     * @param model
     * @return
     */
    @RequestMapping("/findByIdcard2")
    @ResponseBody
    public String findByIdcard2(String user_idcard){
    	User user=userService.findByIdcard(user_idcard);
        if(user != null){
        	return "1";
        }
    	return "0";
    }
    /**
     * 判断用户
     * @param model
     * @return
     */
    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(User user){
    	user.setUser_inDate(new Date());
    	user.setUser_error(0);
    	user.setUser_state(1);//1表示已激活，0表示未激活
    	user.setUser_cardtype("学生证");
    	userService.insertUser(user);
    	return "0";
    }
    /**
     * 跳转到读者修改页面
     * @param category
     * @return
     */
    @RequestMapping("/editUI/{id}/{page}")
    public String editUI(@PathVariable("id")Integer id,Model model,@PathVariable("page")Integer page){
    	User user=userService.findUserById(id);
    	model.addAttribute("user", user);
    	model.addAttribute("page", page);
    	return "useredit";
    }
    /**
     * 修改读者
     * @param category
     * @return
     */
    @RequestMapping("/editUser/{page}")
    @ResponseBody
    public String editUser(User user,@PathVariable("page")Integer page){  	
    	User user1=userService.findUserById(user.getUser_id());
    	user1.setUser_cardtype(user.getUser_cardtype());
    	user1.setUser_name(user.getUser_name());
    	user1.setUser_telphone(user.getUser_telphone());
    	user1.setUser_sex(user.getUser_sex()); 	
    	userService.updateUser(user1);
    	return ""+page;
    }
    /**
     * 修改读者
     * @param category
     * @return
     */
    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpSession session ){  	
    	User user1=userService.findByIdcard(user.getUser_idcard());
    	user1.setUser_name(user.getUser_name());
    	user1.setUser_telphone(user.getUser_telphone());
    	user1.setUser_sex(user.getUser_sex()); 	
    	userService.updateUser(user1);
    	session.setAttribute("USER", user1);
    	return "../../user/jsp/user";
    }
    /**
     * 停用读者
     * @param category
     * @return
     */
    @RequestMapping("/stop/{id}/{page}")
    public String stop(@PathVariable("id")Integer user_id,@PathVariable("page")Integer page){  	
    	User user=userService.findUserById(user_id);
    	user.setUser_state(0);
    	userService.updateUser(user);
    	return "redirect:/User/findAll/"+page;
    }
    /**
     * 恢复读者
     * @param category
     * @return
     */
    @RequestMapping("/start/{id}/{page}")
    public String start(@PathVariable("id")Integer user_id,@PathVariable("page")Integer page){  	
    	User user=userService.findUserById(user_id);
    	user.setUser_state(1);
    	if(user.getUser_error()>10){
    		user.setUser_error(0);
    	}
    	userService.updateUser(user);
    	return "redirect:/User/findAll/"+page;
    }
    /**
     * 删除读者
     * @param category
     * @return
     */
    @RequestMapping("/delete/{id}/{page}")
    public String delete(@PathVariable("id")Integer user_id,@PathVariable("page")Integer page){ 
    	User user=userService.findUserById(user_id);
    	userService.deleteUser(user);
    	return "redirect:/User/findAll/"+page;
    }
    /**
     * 删除读者
     * @param category
     * @return
     */
    @RequestMapping("/save")
    public String save(User user,HttpSession session){ 
    	user.setUser_inDate(new Date());
    	user.setUser_error(0);
    	user.setUser_state(1);
    	userService.insertUser(user);
    	session.setAttribute("USER", user);
    	return "../../user/jsp/index";
    }
}
	
