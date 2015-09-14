<%@ page language="java" contentType="text/html; charset=GBK" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>forward结果页</title>
</head>
<body>
<!-- 使用request内置对象获取age参数的值 -->
<%=request.getParameter("age") %>
<%=request.getParameter("username") %>
</body>
</html>