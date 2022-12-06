<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.ClassassignedDao"%>
<%@page import="com.bean.Classassigned"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<%
Classassigned cl = new Classassigned();
ClassassignedDao dao = new ClassassignedDao();
cl.setClass_id(Integer.parseInt(request.getParameter("id")));
cl.setClass_name(request.getParameter("name"));

int row = dao.edit(cl);
if(row>0){ 
	response.sendRedirect("successeditclass.jsp");
}
else
{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>