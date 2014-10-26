package com.czy.oa.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.czy.oa.dao.ICommonDao;
import com.czy.oa.util.GeniricUtils;

public class CommonDaoImpl<T>  implements ICommonDao<T> {

	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("rawtypes")
	private Class clazz = GeniricUtils.getGenericType(this.getClass());
	
	public void save(T entity) {
		getSession().save(entity);	
	}

	public void update(T entity) {
		getSession().update(entity);
	}

	@SuppressWarnings("unchecked")
	public T findById(Long id) {
		return (T) getSession().get(clazz, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return (List<T>) getSession().createQuery("FROM " + clazz.getSimpleName()).list();
	}

	public void delete(T entity) {
		getSession().delete(entity);
	}

	
	protected Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}

	public List<T> findByIds(Long... ids) {
		List<T> entityList = new ArrayList<T>();
		
		for(Long id:ids)
		{
			entityList.add(findById(id));
		}
		
		return entityList;
	}
}
