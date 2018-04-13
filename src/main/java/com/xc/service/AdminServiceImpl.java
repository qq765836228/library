package com.xc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.AdminMapper;
import com.xc.dao.NoticeMapper;
import com.xc.domain.Admin;
import com.xc.domain.Notice;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private NoticeMapper noticeMapper;
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
	/**
	 * 修改密码
	 */
	@Override
	public void update(Admin admin) {
		adminMapper.update(admin);
	}
	/**
	 * 查找所有公告
	 */
	@Override
	public List<Notice> findAllNotice() {		
		return noticeMapper.findAll();
	}
	@Override
	public Notice findNoticeById(int i) {	
		return noticeMapper.findById(i);
	}
	@Override
	public void updateNotice(Notice notice) {
		noticeMapper.updateNotice(notice);
	}
	@Override
	public void insertNotice(Notice notice) {
		noticeMapper.insertNotice(notice);
	}
	@Override
	public void deleteNotice(Integer notice_id) {
		noticeMapper.delete(notice_id);
	}
	
}
