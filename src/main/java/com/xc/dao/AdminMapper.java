package com.xc.dao;

import com.xc.domain.Admin;

public interface AdminMapper {
	//登陆验证用户是否存在
	public Admin admin_login(Admin admin);
	//根据id查询
	public Admin findAdminById(Integer id);
}
