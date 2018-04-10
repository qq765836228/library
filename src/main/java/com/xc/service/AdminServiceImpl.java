package com.xc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.AdminMapper;
import com.xc.domain.Admin;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	/**
	 * 登陆验证
	 */
	@Override
	public Admin admin_login(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.admin_login(admin);
	}
	/**
	 * 根据id查询
	 */
	@Override
	public Admin findAdminById(Integer id) {
		return adminMapper.findAdminById(id);
	}
	
}
