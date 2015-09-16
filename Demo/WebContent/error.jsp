<%@page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>错误提示页面</title>
</head>
<body>
<!-- 提醒客户端，系统出现异常 -->
系统出现异常！
异常类型：<%=exception.getClass() %><br/>
异常信息：<%=exception.getMessage() %><br/>
</body>
</html>