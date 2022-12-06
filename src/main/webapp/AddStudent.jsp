<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.DAO.ClassassignedDao"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.StudentDao"%>
<%@page import="com.bean.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Adding new student details</title>
</head>
<body>
<form action="Listofstudents.jsp">
<input type="submit" value="Back">
</form>

<form style="text-align: center;" action="Addstudentcontroller.jsp">
<h3 align="center"> <i> <u> <b> Adding New student Details</b></u></i></h3>
<table  border="1" align="center" >
Student_id <br> <input  type="text" name="id"><br>
First_Name <br> <input type="text" name="fname"> <br>
Last_Name <br>  <input type="text" name="lname"><br>
DOB		<br>	<input type="text" name="dob"><br>
Address	<br>	<input type="text" name="address"><br>
Phone_Number <br><input type="text" name="phonenumber"><br>



<br><label> Select Class</label> 
<select name="addclass"> 
<option > Choose Class </option> 
<% ClassassignedDao dao = new ClassassignedDao();
List<Classassigned> list = dao.display();
for(Classassigned cl:list){
%>
<option value="<%=cl.getClass_id() %>"> <%=cl.getClass_name()%> </option>
<% } %>
</select >
<br> 

			<br><input type="submit" name="Add Student">
</table>
</form>



</body>
</html>