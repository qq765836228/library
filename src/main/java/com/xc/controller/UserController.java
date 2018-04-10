package com.xc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	@RequestMapping("/findAll")
	public String findAll(Model model){
		List<User> list=userService.findAll();
		model.addAttribute("list", list);
		return "forward:/jsp/list.jsp";
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
	/*
	@RequestMapping("/findAll2")
	public String findAll2(Model model,String username,String name,String sex,String type,String age1,String age2){
		QueryVo vo=new QueryVo();
		User user=new User();
		if(username != null && !username.isEmpty()){
			user.setUser_idcard(username);
			model.addAttribute("username", username);
		}
		if(name != null && !name.isEmpty()){
			user.setUser_name(name);
			model.addAttribute("name", name);
		}
		if(sex != null && !sex.isEmpty()){
			user.setUser_sex(sex);
			model.addAttribute("sex", sex);
		}
		if(user!=null){
			vo.setUser(user);
		}
		if(type != null && !type.isEmpty()){
			vo.setType(type);
			model.addAttribute("type", type);
		}
		if(age1 != null && !age1.isEmpty()){
			vo.setNumber1(Integer.parseInt(age1));
			model.addAttribute("age1", age1);
		}
		if(age2 != null && !age2.isEmpty()){
			vo.setNumber2(Integer.parseInt(age2));
			model.addAttribute("age2", age2);
		}
		
		List<User> list=userService.findAll2(vo);
		model.addAttribute("list", list);
		return "forward:/jsp/list.jsp";
	}*/
	/**
     * 跳转到添加图书页面
     * @param model
     * @return
     */
    @RequestMapping("/findByIdcard")
    @ResponseBody
    public String findByISBN(String user_idcard){
    	User user=userService.findByIdcard(user_idcard);
        if(user != null){
        	return "1";
        }
    	return "0";
    }
    
}
	
