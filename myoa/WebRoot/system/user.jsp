<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
 	

  </head>
  
  <body>
  		<script type="text/javascript">
  			$(function(){
  				$('#dg').datagrid({    
				    url:'${ctx}/userAction_list.action',    
				    columns:[[    
				        {field:'id',title:'编号',width:100},    
				        {field:'name',title:'用户名',width:100},    
				        {field:'address',title:'地址',width:100,align:'right'}    
				    ]]    
				}); 
  			}); 
  		</script>
  		
    	<table id="dg" fit=true></table>  
  </body>
</html>
