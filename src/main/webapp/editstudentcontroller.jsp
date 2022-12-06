<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.StudentDao"%>
<%@page import="com.bean.Students"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>editing student details</title>
</head>
<body>
<h3> edit Student</h3>
<%
Students student = new Students();
StudentDao dao = new StudentDao();
student.setStudent_id(Integer.parseInt(request.getParameter("id")));
student.setFirst_Name(request.getParameter("fname"));
student.setLast_Name(request.getParameter("lname"));
int row = dao.edit(student);
if(row>0){
	response.sendRedirect("successstudentedit.jsp");
}
else
{
	response.sendRedirect("fail.jsp");
}

%>

</body>
</html>