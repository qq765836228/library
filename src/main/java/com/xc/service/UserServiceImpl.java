package com.xc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public QueryVo<User> findAll(QueryVo<User> vo) {
		List<User> list = userMapper.findAll(vo);
		for(User s:list){
			if(s.getUser_error()>10){
				s.setUser_state(0);
				userMapper.updateUser_error(s);
			}
		}
		if(vo.getNumber()!=null){
			Integer count = userMapper.findCount();			
			vo.setTotalNumber(count);	
			Integer n = vo.getNumber();
			if(count%n==0){
				vo.setTotalPage(count/n);
			}else{
				vo.setTotalPage(count/n+1);
			}
		}	
		vo.setList(list);
		return vo;
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
	public List<User> findAll2(QueryVo<User> vo) {
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
