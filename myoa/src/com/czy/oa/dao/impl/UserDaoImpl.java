package com.czy.oa.dao.impl;

import org.springframework.stereotype.Repository;

import com.czy.oa.dao.IUserDao;
import com.czy.oa.entity.User;

@Repository(IUserDao.DAO_NAME)
public class UserDaoImpl extends CommonDaoImpl<User> implements IUserDao
{

	public User findUserByLoginNameAndPassword(String loginName, String password)
	{
		return (User) getSession().createQuery("FROM User u WHERE u.loginName = ? AND u.password = ?")
				.setParameter(0, loginName)
				.setParameter(1, password).uniqueResult();
	}

}
