package com.xc.service;

import org.springframework.stereotype.Service;

import com.xc.domain.Admin;
@Service
public interface AdminService{
	public Admin admin_login(Admin admin);

	public Admin findAdminById(Integer id);

}
