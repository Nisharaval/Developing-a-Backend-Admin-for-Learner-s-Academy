<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="javax.print.attribute.standard.RequestingUserName"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>learners Academy Login</title>
</head>
<body>

<h2 align="center"> <i> <u>  LEARNERS ACADEMY  </u></i> </h2>
<%PrintWriter pw = response.getWriter(); 
pw.print("weclome "); %>


<form  style="text-align: left" action="Homepage.jsp"> 
<input type="submit" value="Home">
 </form>
 
 
<form style="text-align: right;" action="logoutpage.jsp"> 
<input type="submit" value="Logout">
</form>
 




<div align="left">
<h3> <i><u>Information Details </u> </i> </h3>
<pre> </pre>
<form  action="Listofclasses.jsp">
<table>
<input type="submit" value="LIST OF ALL CLASSES">
</table>
</form>
<pre> </pre>

<form action="Listofstudents.jsp">
<table>
<input type="submit" value="LIST OF ALL STUDENTS">
</table>
</form>
<pre> </pre>


<form action="Listofteachers.jsp">
<table>
<input type="submit" value="LIST OF ALL TEACHERS">
</table>
</form>
<pre> </pre>


<form action="Listofsubjects.jsp">
<table>
<input type="submit" value="LIST OF ALL SUBJECTS">
</table>
</form>
<pre> </pre>


<form action="Reports.jsp">
<table>
<input type="submit" value="REPORTS">
</table>
</form>
<pre> </pre>
</div>
</body>
</html>