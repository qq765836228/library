package com.xc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xc.domain.Admin;
import com.xc.service.AdminService;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	
	
	private AdminService adminService;
	@Autowired
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	/**
	 * 登陆验证
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/login")
	@ResponseBody
		public  String loginCheck(HttpServletRequest request, HttpServletResponse response)throws IOException{
		 	//获取用户名密码
			String admin_card=request.getParameter("admin_card");
		 	String admin_password=request.getParameter("admin_password");	
		 	//封装到Admin对象中
		 	Admin admin=new Admin();
		 	admin.setAdmin_card(admin_card);
		 	admin.setAdmin_password(admin_password);
		 	//调用admin_login方法
		 	Admin uu= adminService.admin_login(admin);			    
			if(uu!=null){ 
				String str = uu.getAdmin_id().toString();
				return str;
			} 
			return "0"; 
		}
		/**
		 * 进入主页
		 * @param id
		 * @param session
		 * @return
		 * @throws IOException
		 */
		@RequestMapping("/indexUI/{id}")
		public  String indexUI(@PathVariable("id")Integer id,HttpSession session)throws IOException{			 
			Admin admin= adminService.findAdminById(id);	
			session.setAttribute("ADMIN", admin);
			return "index"; 
		}
		
		/**
		 * 注销
		 * @param session
		 * @return
		 */
		@RequestMapping("/loginOut")
		public String loginOut(HttpSession session){
		    session.removeAttribute("ADMIN");
			return "login";
		}
		
		
}
	
