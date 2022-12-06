<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.SubjectsDao"%>
<%@page import="com.bean.Subjects"%>
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
Subjects subjects = new Subjects();
SubjectsDao dao = new SubjectsDao();
subjects.setSubject_id(Integer.parseInt(request.getParameter("id")));
subjects.setSubject_name(request.getParameter("name"));
int row = dao.edit(subjects);
if(row>0){
	response.sendRedirect("successeditsubject.jsp");
}
else
{
	response.sendRedirect("fail.jsp");
}



%>

</body>
</html>