<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h3> Edit teachers details</h3>
<form action="editteachercontroller.jsp">
<table>
<input type="hidden" name="id" value="<%=request.getParameter("id")%>"><br>
Teacher_Name <input type="text" name="name"><br>
<input type="submit" value ="Edit">


</table>

</form>

</body>
</html>