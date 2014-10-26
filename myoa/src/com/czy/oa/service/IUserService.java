package com.czy.oa.service;

import java.util.List;

import com.czy.oa.entity.User;

public interface IUserService
{
	String SERVICE_NAME = "com.czy.oa.service.impl.UserServiceImpl";
	
	List<User> findAll();
	List<User> findByIds(Long... ids);
	void delete(User user);
	void add(User user);
	void update(User user);
	User findById(Long id);
	User getUserByLoginNameAndPasswod(String loginName, String password);
}
