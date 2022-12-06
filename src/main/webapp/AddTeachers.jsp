<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Adding teachers details</title>
</head>
<body>
<form action="Listofteachers.jsp">
<input type="submit" value="Back">
</form>
<form  style="text-align: center;"   action="Addteachercontroller.jsp">
<table border="1" align="center">
<h3 align="center"><i><u>Add New Teacher's Details  </u></i> </h3>
Teacher_id <br>  <input type="text" name="id"> <br><br>
Teacher_name <br> <input type="text" name= "name"> <br><br>
 <br> <input type="submit"  value="Add teacher"> <br>
</table>
</form>

</body>
</html>