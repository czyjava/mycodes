<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  		<script type="text/javascript">
  			$(function(){
  				$('#dg').datagrid({    
				    url:'userAction_list.action',    
				    columns:[[    
				        {field:'id',title:'编号',width:100},    
				        {field:'name',title:'用户名',width:100},    
				        {field:'address',title:'地址',width:100},
				        {field:'loginName',title:'登录名',width:100}, 
				        {field:'phone',title:'电话号码',width:100}, 
				        {field:'gender',title:'性别',width:100}, 
				        {field:'description',title:'说明',width:300} 
				    ]],
				    
				    toolbar: [{
						iconCls: 'icon-add',
						text:'新增用户',
						handler: function(){
							$("#mydialog").dialog("open");
						}
					},'-',{
						iconCls: 'icon-edit',
						text:'更新用户',
						handler: function(){}
					},'-',{
						iconCls: 'icon-remove',
						text:'删除用户',
						handler: function(){}
					}],
				    
				    fitColumns:true
				}); 
				
  			}); 
  		</script>
  		
    	<table id="dg" data-options="fit:true"></table>
    	 
    	<div id="mydialog" class="easyui-dialog" data-options="closed:true" style="width:260px;">
    		 <div>   
		        <input class="easyui-validatebox" type="text" name="name" data-options="required:true" />   
		    </div>   
		    <div>   
		        <input class="easyui-validatebox" type="text" name="loginName" />   
		    </div>  
    	</div>
