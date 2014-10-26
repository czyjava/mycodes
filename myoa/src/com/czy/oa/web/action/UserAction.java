package com.czy.oa.web.action;

import java.io.IOException;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.czy.oa.entity.User;
import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>
{
	public String logout()
	{
		ActionContext.getContext().getSession().put("user", null);
		
		return "loginUI";
	}
	
	public void list()
	{
		List<User> userList = userService.findAll();
		
		 JSONArray jsonArray = JSONArray.fromObject(userList);  
	     
		 try {
			 ServletActionContext.getResponse().setContentType("text/json");
			 ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().getWriter().write(jsonArray.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String addUI()
	{
		return "saveUI";
	}
	
	public String add()
	{
		userService.add(model);
		
		return "toList";
	}
	
	public String updateUI()
	{
		User user = userService.findById(model.getId());
		ActionContext.getContext().getValueStack().push(user);
		
		
		return "saveUI";
	}
	
	public String update()
	{
		
		userService.update(model);
		
		return "toList";
	}
	
	public String login()
	{
		
		return "loginUI";
	}
	
	public String delete()
	{
		User user = userService.findById(model.getId());
		userService.delete(user);
		return "toList";
	}
}
