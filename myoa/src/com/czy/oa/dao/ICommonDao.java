package com.czy.oa.dao;

import java.util.List;

public interface ICommonDao<T> {
	
	void save(T entity);
	void update(T entity);
	T findById(Long id);
	List<T> findAll();
	void delete(T entity);
	List<T> findByIds(Long... ids);
}
