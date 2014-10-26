package com.czy.oa.dao;

import com.czy.oa.entity.User;

public interface IUserDao extends ICommonDao<User>
{
	String DAO_NAME = "com.czy.oa.dao.impl.UserDaoImpl";

	User findUserByLoginNameAndPassword(String loginName, String password);
}
