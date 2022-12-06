<%@page import="com.bean.Teacherassigned"%>
<%@page import="com.DAO.TeacherassignedDao"%>
<%@page import="com.bean.Subjects"%>
<%@page import="com.DAO.SubjectsDao"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Reports"%>
<%@page import="com.DAO.ReportsDao"%>
<%@ include file="login.jsp"%>
<h2 align="center">
	<b> <i> <u> Subjects and Teachers details </u></i>
	</b>
</h2>

<form style="text-align: center;">

	<table border="1" align="center"">
		<tr>
			<th>Subject_Name</th>
			<th>Teacher_Name</th>
			
		</tr>
		<% 
				SubjectsDao dao = new SubjectsDao();
				List<Subjects> list = dao.display();
				for (Subjects sub : list) {
				%>
				<%
				TeacherassignedDao dao1 = new TeacherassignedDao();
				List<Teacherassigned> list1 = dao1.display();
				for (Teacherassigned teacher : list1) {
				%>
		<tr>
		
			
			<td><%=sub.getSubject_name()%>  </td> 
			
			 
			

			<td><%=teacher.getTeacher_name()%> </td>
			
		
		</tr> 
<% } %> 	<% } %>

	</table>
	
</form>