<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="java.util.List"%>
<%@page import="com.DAO.SubjectsDao"%>
<%@page import="com.bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<%@ include file="login.jsp"
%>
<h2 align="center"> <b><i><u> List of Subjects    </u></i></b> </h2>
<form style="text-align: center;"    action="AddSubjects.jsp">
<input type="submit" value =" Add new subjects">
<pre></pre>
	<table border="1" align="center">
				<tr>
					<th>Subject_id</th>
					<th>Subject_Name</th>
					<th>  Action </th>
					<th> Action</th>
					

				</tr>
				<%
				SubjectsDao dao = new SubjectsDao();
				List<Subjects> list = dao.display();
				for (Subjects subjects : list) {
				%>
				<tr>
					<td><%=subjects.getSubject_id()%></td>
					<td><%=subjects.getSubject_name()%></td>
					<td><a href="editsubject.jsp?id=<%=subjects.getSubject_id()%>">Edit </a></td>
				    <td><a href="deletesubject.jsp?id=<%=subjects.getSubject_id()%>">Delete</a></td>
				</tr>
				<%
				}
				%>
			</table>    
</form>
</body>
</html>