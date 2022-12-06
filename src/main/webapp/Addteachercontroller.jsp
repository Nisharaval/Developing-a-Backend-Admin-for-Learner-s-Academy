<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.TeacherassignedDao"%>
<%@page import="com.bean.Teacherassigned"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h3>Add New Teacher's Details</h3>
<%
Teacherassigned teacher = new Teacherassigned();
TeacherassignedDao dao = new TeacherassignedDao();
teacher.setTeacher_id(Integer.parseInt(request.getParameter("id")));
teacher.setTeacher_name(request.getParameter("name"));

int row = dao.insert(teacher);
if(row>0){
	response.sendRedirect("successteacher.jsp");
}
else
{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>