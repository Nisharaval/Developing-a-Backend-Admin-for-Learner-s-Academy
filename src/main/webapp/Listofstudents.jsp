<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="java.util.*"%>
<%@page import="com.DAO.*"%>
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
	<h2 align="center"> <b> <i> <u> List of Student details </u></i> </b></h2>

	<form style="text-align: center;"   action="AddStudent.jsp" methd="post">
		<input type="submit" value="Add new Studentdetails"> <pre> </pre>
			<table border="1" align="center"">
			<tr>
					<th>Student_id</th>
					<th>First_Name</th>
					<th>Last_Name</th>
					<th>Date of Birth</th>
					<th>Address</th>
					<th>Phone Number</th>
					<th>Assign Classes</th>
					<th>  Action </th>
					<th> Action</th>
				</tr>
				<%
				StudentDao dao = new StudentDao();
				List<Students> list = dao.display();
				for (Students student : list)
				{
					ClassassignedDao dao1 = new ClassassignedDao();
					List<Classassigned> list1 = dao1.display();
				%>
				
				
				
							
				<tr>
				
					<td><%=student.getStudent_id()%></td>
					<td><%=student.getFirst_Name()%>   </td>
					<td><%=student.getLast_Name()%>   </td>
					<td><%=student.getDOB()%></td>
					<td><%=student.getAddress()%></td>
					<td><%=student.getPhonenumber()%></td>
					<% 
					for (Classassigned cl : list1)
					{	
										%>
					<td><%=cl.getClass_name() %></td>
                 <%} %>
					
					<td>  <a href="editstudent.jsp?id=<%=student.getStudent_id()%>">Edit </a></td>
					<td><a href="deletestudent.jsp?id=<%=student.getStudent_id() %>">Delete </a></td>
					

					
				</tr>
			
				<%}  %>
			</table>
			
	</form>

</body>
</html>