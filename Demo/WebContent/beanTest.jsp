<?xml version="1.0" encoding="GBK" ?>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>Java Bean����</title>
</head>
<body>
	<!-- ����lee.Person��ʵ������ʵ����Ϊp1 -->
	<jsp:useBean id="p1" class="lee.Person" scope="page"></jsp:useBean>
	<!-- ����p1������ -->
	<jsp:setProperty property="name" name="p1" value="lisheng.yin"/>
	<jsp:setProperty property="age" name="p1" value="29"/>
	<!-- ���p1������ -->
	<jsp:getProperty property="name" name="p1"/><br />
	<jsp:getProperty property="age" name="p1"/>
</body>
</html>