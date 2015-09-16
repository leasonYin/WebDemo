<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>application测试</title>
</head>
<body>
<%
	String driver = application.getInitParameter("driver");
	String url = application.getInitParameter("url");
	String user = application.getInitParameter("user");
	String pass = application.getInitParameter("pass");
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, user, pass);
	Statement stmt = conn.createStatement();
	
	String sql = "select * from user";
	ResultSet rs = stmt.executeQuery(sql);
%>

<table bgcolor="#9999dd" border="1" width="300">

<%
	while(rs.next()){
%>
	<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>