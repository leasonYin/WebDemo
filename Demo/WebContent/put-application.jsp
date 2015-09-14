<%@ page language="java" contentType="text/html; charset=GBK" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>application≤‚ ‘</title>
</head>
<body>
<!-- jsp…˘√˜ -->
<%! int i; %>
<% application.setAttribute("counter", String.valueOf(++i)); %>
<%=i %>
</body>
</html>