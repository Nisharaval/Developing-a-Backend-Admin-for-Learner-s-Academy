<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.bean.Subjects"%>
<%@page import="com.DAO.SubjectsDao"%>
<%@page import="com.bean.Teacherassigned"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.TeacherassignedDao"%>
<%@page import="com.bean.Classassigned"%>
<%@page import="com.DAO.ClassassignedDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<form action="Listofclasses.jsp"> <input type="submit" value="Back"> </form>

<form style="text-align: center;"  action="AddClasscontroller.jsp">
<h3 align="center"><b> <u> <i> Adding New Class details</i></u></b> </h3>
<table  border="1"  align="center">
Class_id <br>  <input  type="text" name="id"> <br><br>
Class_Name <br>  <input type="text" name="name"> <br>

<input type="hidden" name ="id" value="<%=request.getParameter("id") %>">
<br><label> Select Subject</label> <br>
<select> 
<% SubjectsDao dao = new SubjectsDao();
List<Subjects> list = dao.display();

%>
<option > Choose Subjects </option> <br>
<% for(Subjects subject:list){ %>
<option value="<%=subject.getSubject_id()%>"> <%=subject.getSubject_name()%> </option>
<% } %>
</select>

<br> 
<br> 

<label> Select Teacher</label> <br>
<select> 
<% TeacherassignedDao dao1 = new TeacherassignedDao();

List<Teacherassigned> list1 = dao1.display();
%>
<option > Choose Teacher </option>
<% for(Teacherassigned teacher:list1){ %>
<option value="<%=teacher.getTeacher_id() %>"> <%=teacher.getTeacher_name()%> </option>
<% } %>
</select>

<br>
			<br> <input type="submit" name="Add">
</table>
</form>


</body>
</html>