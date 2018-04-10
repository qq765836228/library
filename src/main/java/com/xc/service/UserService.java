package com.xc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.xc.domain.User;
import com.xc.vo.QueryVo;
@Service
public interface UserService{
	public User loginCheck(User user);

	public void insertUser(User user);

	public List<User> findAll();

	public void deleteUser(Integer id);

	public User findUserById(Integer id);

	public void updateUser(User user);

	public List<User> findAll2(QueryVo<User> vo);

	public User checkUsername(String username);
//后期
	//根据idcard查询
	public User findByIdcard(String user_idcard);

}
