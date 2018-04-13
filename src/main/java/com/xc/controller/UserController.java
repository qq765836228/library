package com.xc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xc.domain.User;
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

	/**
	 * 登陆验证
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/checks")
	@ResponseBody
		public  String loginCheck(HttpServletRequest request, HttpServletResponse response)throws IOException{
		 	String username=request.getParameter("username");
		 	String password=request.getParameter("password");	
		 	User user=new User();
		   user.setUser_idcard(username);
		   user.setUser_password(password);
			User uu= userService.loginCheck(user);			    
			if(uu!=null){ 
				String str = uu.getUser_id().toString();
			   return str;
			} 
			return "0"; 
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
	 * 跳转到主页
	 * @return
	 */
	@RequestMapping("/indexUI/{id}")
	public String indexUI(@PathVariable("id")String id,Model model,HttpSession session){	
		Integer ids=Integer.parseInt(id);
		User user = userService.findUserById(ids);
		session.setAttribute("user", user);
		return "jsp/index";
	}
	/**
	 * 跳转到用户添加页面
	 * @return
	 */
	@RequestMapping("/addUI")
	public String loginCheck(){		
		return "jsp/add";
	}
	/**
	 * 保存用户信息
	 * @param user
	 * @return
	 * @throws ParseException 
	 */
	@RequestMapping("/save")
	public String save(User user,Model model,HttpSession session) throws ParseException{
		/*Date date = new SimpleDateFormat("yyyy-MM-dd").parse(birth);
		user.setBirthday(date);	*/
		user.setUser_inDate(new Date());
		userService.insertUser(user);
		session.setAttribute("user", user);
		return "jsp/index";
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
	 * 删除信息
	 * @return
	 */
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id")Integer id,Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		Integer id1 = user.getUser_id();
		if(id == id1){
			userService.deleteUser(id);
			return "redirect:/login/logout";
		}else{
			userService.deleteUser(id);
		}
		return "redirect:/login/findAll";
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
	@RequestMapping("/logout")
	public String logout(HttpSession httpSession
			){
		httpSession.removeAttribute("user");
		return "redirect:/jsp/login.jsp";
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
}
	
