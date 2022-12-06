<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.bean.Teacherassigned"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.StudentDao"%>
<%@page import="com.DAO.TeacherassignedDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Teachersassigned</title>
</head>
<body>
<%@ include file="login.jsp" %>

<h2 align="center"> <b><u> <i> List of Teachers Details </i></u></b> </h3>
<form  style="text-align: center;"   action="AddTeachers.jsp">
		<input type="submit" value="Add new Teachers details"> <pre> </pre>
			<table border="1" align="center">
				<tr>
					<th>Teachers_id</th>
					<th>Teachers_Name</th>
					<th>  Action </th>
					<th> Action</th>
				</tr>
				<%
				TeacherassignedDao dao = new TeacherassignedDao();
						List<Teacherassigned> list = dao.display();
						for (Teacherassigned teacher : list) {
				%>
				<tr>
					<td> <%= teacher.getTeacher_id() %></td>
					<td> <%= teacher.getTeacher_name() %></td>
					<td><a href="editteacher.jsp?id=<%=teacher.getTeacher_id()%>">Edit</a></td>
				    <td><a href="deleteteacher.jsp?id=<%=teacher.getTeacher_id()%>">Delete</a></td>
				</tr>
				<%
				}
				%>
			</table>
	</form>

</body>
</html>