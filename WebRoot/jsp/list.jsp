<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 使用c标签 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="用户列表">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h2>查询用户</h2>
	<form action="selectById" method="post">
	  <input type="text" name="sysUser.id">
	  <input type="submit" value="ID查询">
	 </form>
    <h1>用户列表</h1>
     <table border="1">
		<tr>
	 		<td align="center">ID</td>
	        <td align="center">姓名</td>
	        <td align="center">密码</td>   
	       	<td>修改用户</td>
			<td>删除用户</td>              
	    </tr>
		<!-- 对集合元素迭代 -->
    	<c:forEach var="user" items="${userList}">
            <tr>
               <td>${user.id}</td>
               <td>${user.userName}</td>
               <td>${user.password}</td>
               <td><a href="${pageContext.request.contextPath}/jsp/update.jsp?id=${user.id}&userName=${user.userName}&password=${user.password}">修改</a></td>
			   <td><a href="deleteUser?sysUser.id=${user.id}">删除</a></td>
            </tr>
         </c:forEach>
	</table>
	
  </body>
</html>
