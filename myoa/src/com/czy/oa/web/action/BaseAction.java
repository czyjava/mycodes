package com.czy.oa.web.action;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.czy.oa.entity.User;
import com.czy.oa.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class BaseAction<T> extends ActionSupport implements ModelDriven<T>
{
	@Resource(name = IUserService.SERVICE_NAME)
	protected IUserService userService;
	
	protected T model;
	
	protected int pageNum = 0;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public BaseAction() {
		try {
			// 得到model的类型信息
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class clazz = (Class) pt.getActualTypeArguments()[0];

			// 通过反射生成model的实例
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	protected User getCurrentUser()
	{
		User user = (User) ActionContext.getContext().getSession().get("user");
		
		return user;
	}

	public T getModel()
	{
		return model;
	}

	public int getPageNum()
	{
		return pageNum;
	}

	public void setPageNum(int pageNum)
	{
		this.pageNum = pageNum;
	}

}
