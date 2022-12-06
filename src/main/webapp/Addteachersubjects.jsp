<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.bean.Teacherassigned"%>
<%@page import="com.DAO.TeacherassignedDao"%>
<%@page import="com.bean.Subjects"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.SubjectsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h3>Assign Subjects and Teachers</h3>
<form action="Assigning.jsp">
<input type="hidden" name ="id" value="<%=request.getParameter("id") %>">
<label> Select Subject</label>
<select> 
<% SubjectsDao dao = new SubjectsDao();
List<Subjects> list = dao.display();

%>
<option > Choose Subjects </option>
<% for(Subjects subject:list){ %>
<option value="<%=subject.getSubject_id()%>" > <%=subject.getSubject_name()%> </option>
<% } %>
</select>
<br> 
<br> 

<label> Select Teacher</label>
<select> 
<% TeacherassignedDao dao1 = new TeacherassignedDao();
List<Teacherassigned> list1 = dao1.display();
%>
<option  > Choose Teacher </option>
<% for(Teacherassigned teacher:list1){ %>
<option value="<%=teacher.getTeacher_id() %>"> <%=teacher.getTeacher_name()%> </option>
<% } %>
</select>






<br>
<input type="submit" value="submit">
</form>


</body>
</html>