<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
    
    <title>MYOA</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="${ctx }/js/jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx }/js/jquery-easyui/jquery.easyui.min.js"></script>
  	<script type="text/javascript" src="${ctx }/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
 	<link type="text/css" rel="stylesheet" href="${ctx }/js/jquery-easyui/themes/default/easyui.css"></link>
 	<link type="text/css" rel="stylesheet" href="${ctx }/js/jquery-easyui/themes/icon.css"></link>
 	
 	<script type="text/javascript">
  		$(function(){
  			var accord = $("#menu_accrod"); //手风琴组件菜单
  			var tabs = $("#tt"); //选项卡组件
  			
  			//菜单项点击事件
  			accord.find("p").click(function(){
  				var title = $(this).html();
  				var url = this.title;
  				
  				if(tabs.tabs("exists",title)){
  					tabs.tabs("select",title);
  				}else{
  					$(tabs).tabs('add',{ 
  	  				    title:title,    
  	  				    content:"<iframe src='" + url + " ' style='width:98%;height:98%;border:false'></iframe>",    
  	  				    closable:true   
  	  				});  
  				}
  			});
  		});
  	</script>
  </head>
  
  <body class="easyui-layout">   
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"> MyOA </div>   
    <div data-options="region:'west',title:'菜单',split:true" style="width:200px;">
    	<div id="menu_accrod" class="easyui-accordion" fit=true>  
    		<div title="审批流转" data-options="iconCls:'icon-edit'" style="overflow:auto;padding:10px;">   
		        <p>审批流程管理</p>
		        <p>表单模板管理</p>  
		        <p>起草申请</p>
		        <p>待我审批</p>  
		        <p>我的申请查询</p>
		    </div>    
		    <div title="网上交流" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">   
		        <p>论坛</p>
		        <p>论坛管理</p>  
		    </div>   
		    <div title="系统管理" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">   
		        <p>部门管理</p>
		        <p>角色管理</p> 
		        <p title="${ctx }/system/user.jsp">用户管理</p> 
		    </div>   
		</div>  
    </div>   
    <div id="content" data-options="region:'center'" style="padding:5px;background:#eee;">
    	<div id="tt" class="easyui-tabs" fit=true>  
    	 
		</div>
    </div>   
</body>  

</html>
