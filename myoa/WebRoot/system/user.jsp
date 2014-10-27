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
				
				$("#btn1").click(function(){
					$('#myform').form('submit', {    
					    url:"userAction_add.action",    
					    onSubmit: function(){    
					        if(!$("#myform").form("validate")){
					        	$.messager.show("提示信息","输入有误，请重新输入...");
					        	return false;
					        } 
					    },    
					    success:function(data){    
					          $("#mydialog").dialog("close");
					    	  $('#dg').datagrid("reload");
					          $.messager.show("提示信息","更新完毕...");
					    }    
					});  
					
				});
  			}); 
  		</script>
  		
    	<table id="dg" data-options="fit:true"></table>
    	 
    	<div id="mydialog" class="easyui-dialog" data-options="closed:true,title:'新增用户'" style="width:360px;">
    		<form id="myform" method="post">
		    	<table style="border:1px solid; width: 100%;height: 98%; border-collapse: 0">
		    			<tr>
		    				<td>用户名</td>
		    				<td><input class="easyui-validatebox" type="text" name="name" data-options="required:true" /></td>
		    			</tr>
		    			<tr>
		    				<td>登录名</td>
		    				<td><input class="easyui-validatebox" type="text" name="loginName" />   </td>
		    			</tr>
		    			<tr>
		    				<td>地址</td>
		    				<td><input class="easyui-validatebox" type="text" name="address" data-options="required:true" /></td>
		    			</tr>
		    			<tr>
		    				<td>电话号码</td>
		    				<td><input class="easyui-validatebox" type="text" name="phone" />   </td>
		    			</tr>
		    			<tr>
		    				<td>性别</td>
		    				<td><input class="easyui-validatebox" type="text" name="gender" data-options="required:true" /></td>
		    			</tr>
		    			<tr>
		    				<td>说明</td>
		    				<td><input class="easyui-validatebox" type="text" name="description" />   </td>
		    			</tr>
	    			<tr align="right">
	    				<td colspan="2">
	    					<a id="btn1" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">确定</a>
	    					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取消</a>  
	    				</td>
	    			</tr>
	    		</table>
    		</form>
    	</div>
