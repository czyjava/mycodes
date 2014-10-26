package com.czy.oa.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.czy.oa.dao.IUserDao;
import com.czy.oa.entity.User;
import com.czy.oa.service.IUserService;

@Service(IUserService.SERVICE_NAME)
@Transactional
public class UserServiceImpl implements IUserService
{

	@Resource(name = IUserDao.DAO_NAME)
	private IUserDao userDao;
	
	public List<User> findAll()
	{
		return userDao.findAll();
	}

	public List<User> findByIds(Long... ids)
	{
		return userDao.findByIds(ids);
	}

	public void delete(User user)
	{
		userDao.delete(user);
	}

	public void add(User user)
	{
		userDao.save(user);
	}

	public void update(User user)
	{
		userDao.update(user);
	}

	public User findById(Long id)
	{
		return userDao.findById(id);
	}

	public User getUserByLoginNameAndPasswod(String loginName,
			String password)
	{
		User user = userDao.findUserByLoginNameAndPassword(loginName,password);
		
		return user;
	}

}
