<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="首页">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>欢迎使用</h1>
 		<s:form action="login" method="post">
   		<table>
   			<tr>
   				<s:textfield name="sysUser.userName" label="用户名"/>
   				<s:password name="sysUser.password" label="密码"/>
   			</tr>
   			<tr>
   				<s:submit value="sumbit"/><s:reset value="reset"/>
   			</tr>
   		</table>
	</s:form>
  </body>
</html>
