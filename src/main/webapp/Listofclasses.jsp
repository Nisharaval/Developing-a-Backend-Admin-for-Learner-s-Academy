<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.*"%>
<%@page import="com.bean.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
 
<div align="top">
<%@ include file="login.jsp"  

%>
</div>
<div align="center">

<form  action="AddClass.jsp">
<h2 align="center"> <b> <i><u> List Of Class Details </u> </i></b></h2>
<table border="1" align="center">
		<input type="submit" value="Add new Classes details" > <pre> </pre>
			
				<tr>
				<th>Class_id</th>
					<th>Class_Name</th>
					<th>Assign Subject</th>
					<th> Assign Teacher</th>
					<th>  Action </th>
					<th> Action</th>
					
					
					
					
				</tr>
							<%
		       ClassassignedDao dao = new ClassassignedDao();
				List<Classassigned> list=dao.display();
				for(Classassigned cl:list)
		{
				%>
				<% 
			
					SubjectsDao dSubjectsDao = new SubjectsDao();
					List<Subjects> list1Subjects = dSubjectsDao.display();
					for(Subjects subject:list1Subjects){
							%>
					<%   
		
				  TeacherassignedDao daTeacherassignedDao = new TeacherassignedDao();
						List<Teacherassigned> list2 = daTeacherassignedDao.display();
						for(Teacherassigned teacher:list2){
						
					%>
				
				
				
				<tr>
				
				
					<td><%=cl.getClass_id() %></td>
					<td><%=cl.getClass_name()%></td>
					
					
					
					<td><%=subject.getSubject_name()%> </td>
					
				
					
								
					<td><%=teacher.getTeacher_name()%> </td>
				
				          	
				
					<td><a href="editclass.jsp?id=<%=cl.getClass_id()%>">Edit </a></td>
					<td><a href="deleteclass.jsp?id=<%=cl.getClass_id()%>">Delete </a></td>
			
 
		
				</tr>
		<%} %><%} }%> 
						

				
			</table>
			
			
	</form>
	</div>

</body>
</html>