<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>小脚本测试</title>
</head>
<body>

	<%
		//注册数据库驱动
		Class.forName("com.mysql.jdbc.Driver");
		//获取数据库连接
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrs", "root", "1");
		//创建statement
		Statement stmt = conn.createStatement();
		//执行查询
		ResultSet rs = stmt.executeQuery("select * from user");
	%>
	<table bgcolor="#9999dd" border="1" width="300">
	<%
		//遍历集合
		while(rs.next()){
	%>
		<tr>
			<!-- 输出结果集 -->
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
		</tr>
	<% } %>
	</table>
</body>
</html>