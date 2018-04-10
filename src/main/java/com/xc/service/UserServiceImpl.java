package com.xc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xc.dao.UserMapper;
import com.xc.domain.User;
import com.xc.vo.QueryVo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	
	/**
	 * 登陆验证
	 */
	public User loginCheck(User user) {		
		return userMapper.loginCheck(user);
	}
	/**
	 * 保存用户信息
	 */
	@Override
	public void insertUser(User user) {
		userMapper.insertUser(user);
	}
	/**
	 * 查找所有信息
	 */
	@Override
	public List<User> findAll() {
		return (List<User>)userMapper.findAll();
	}
	/**
	 * 删除信息
	 */
	@Override
	public void deleteUser(Integer id) {
		userMapper.deleteUser(id);
	}
	/**
	 * 根据id查找
	 */
	@Override
	public User findUserById(Integer id) {
		return userMapper.findUserById(id);
	}
	/**
	 * 更新用户信息
	 */
	@Override
	public void updateUser(User user) {
		userMapper.updateUser(user);
	}
	/**
	 * 按条件查询
	 */
	@Override
	public List<User> findAll2(QueryVo vo) {
		return userMapper.findAll2(vo);
	}
	/**
	 * 根据username查询用户
	 */
	@Override
	public User checkUsername(String username) {
		return userMapper.findUserByUserName(username);
	}
	/**
	 * 根据Idcard查询用户
	 */
	@Override
	public User findByIdcard(String user_idcard) {
		return userMapper.findByIdcard(user_idcard);
	}
	
}
