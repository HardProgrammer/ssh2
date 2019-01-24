<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="当前用户">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>当前用户信息：</h1>
    <table border="1">
	<tr>
		<td>ID</td>
		<td>姓名</td>
		<td>密码</td>
	</tr>

	<tr>
		<td>${sysUser.id}</td>
		<td>${sysUser.userName}</td>
		<td>${sysUser.password}</td>
	</tr>
    </table>
    <a href="userList.action">用户列表</a> <br>
  </body>
</html>
