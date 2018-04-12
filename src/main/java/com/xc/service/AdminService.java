package com.xc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.xc.domain.Admin;
import com.xc.domain.Notice;
@Service
public interface AdminService{
	public Admin admin_login(Admin admin);

	public Admin findAdminById(Integer id);

	public void update(Admin uu);

	public List<Notice> findAllNotice();

}
