package com.xc.controller;

import java.io.IOException;
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

import com.xc.domain.Admin;
import com.xc.domain.Notice;
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
		 * 更改密码
		 * @param request
		 * @param response
		 * @return
		 * @throws IOException
		 */
		@RequestMapping("/editAdmin")
		@ResponseBody
			public  String editAdmin(String admin_card,String old_password,String new_password,HttpSession session)throws IOException{
			 	//封装到Admin对象中
			 	Admin admin=new Admin();
			 	admin.setAdmin_card(admin_card);
			 	admin.setAdmin_password(old_password);
			 	//调用admin_login方法
			 	Admin uu= adminService.admin_login(admin);			    
				if(uu!=null){ 
					uu.setAdmin_password(new_password);
					adminService.update(uu);
					session.removeAttribute("ADMIN");
					return "1";
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
			List<Notice> list=adminService.findAllNotice();
			Notice notice=adminService.findNoticeById(1);
			session.setAttribute("ADMIN", admin);
			session.setAttribute("List", list);
			session.setAttribute("Notice", notice);
			return "index"; 
		}
		/**
		 * 更改密码
		 * @param id
		 * @param session
		 * @return
		 * @throws IOException
		 */
		@RequestMapping("/editPasswordUI")
		public  String editPasswordUI(HttpSession session)throws IOException{			 		
			return "editAdmin"; 
		}
		/**
		 * 注销
		 * @param session
		 * @return
		 */
		@RequestMapping("/loginOut")
		public String loginOut(HttpSession session){
		    session.removeAttribute("ADMIN");
		    session.removeAttribute("List");
		    session.removeAttribute("Notice");
			return "login";
		}
		/**
		 * 注销
		 * @param session
		 * @return
		 */
		@RequestMapping("/editNoticeUI/{id}")
		public String editNoticeUI(@PathVariable("id")Integer id,Model model){
			Notice notice=adminService.findNoticeById(id);
			model.addAttribute("NOTICE", notice);
			return "editNotice";
		}
		/**
		 * 修改服务时间
		 * @param session
		 * @return
		 */
		@RequestMapping("/editNotice")
		@ResponseBody
		public String editNotice(String notice_text,Integer notice_id,HttpSession session){
			Notice notice=adminService.findNoticeById(notice_id);
			notice.setNotice_text(notice_text);
			adminService.updateNotice(notice);
			session.setAttribute("Notice", notice);
			return "0";
		}
		/**
		 * 新增公告
		 * @param session
		 * @return
		 */
		@RequestMapping("/addNotice")
		@ResponseBody
		public String addNotice(String notice_text,HttpSession session){
			Notice notice=new Notice();
			notice.setNotice_text(notice_text);
			notice.setNotice_date(new Date());
			adminService.insertNotice(notice);
			List<Notice> list=adminService.findAllNotice();
			session.setAttribute("List", list);
			return "0";
		}
		/**
		 * 修改服务时间
		 * @param session
		 * @return
		 */
		@RequestMapping("/deleteNotice/{id}")
		public String deleteNotice(@PathVariable("id")Integer notice_id,HttpSession session){
			adminService.deleteNotice(notice_id);
			List<Notice> list=adminService.findAllNotice();
			session.setAttribute("List", list);
			return "index";
		}
}
	
