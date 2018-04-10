package com.xc.dao;

import java.util.List;

import com.xc.domain.User;
import com.xc.vo.QueryVo;

public interface UserMapper {

	    //登陆验证用户是否存在
		public User loginCheck(User user);
		//根据id查询数据 
		public User findUserById(Integer id);
		//添加新用户
		public void insertUser(User user);
		//删除用户
		public void deleteUser(Integer id);
		//更新用户
		public void updateUser(User user);
		//根据username查询数据 
		public User findUserByUserName(String username);
		//查询所有用户
		public List<User> findAll();
		//分类所有用户
		public List<User> findAll2(QueryVo<User> vo);
		//后期
		//根据Idcard查询用户
		public User findByIdcard(String user_idcard);
}
