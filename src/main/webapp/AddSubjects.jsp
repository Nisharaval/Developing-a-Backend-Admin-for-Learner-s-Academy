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

<form action="Listofsubjects.jsp">
<input type="submit" value =" Back ">
</form>
<h2 align="center"> <b> <i> <u>Add new Subject details </u></i></b></h2>
<form   style="text-align: center;"  action="Addsubjectcontroller.jsp">
<table border="1" align="center">


Subject_id<br>
<input type="text" name="id"> <br>
Subject_Name<br>
<input type="text" name="name"> <br>
<br>
<input type="submit" value =" Add "> <br>
</table>


</form>
</body>
</html>