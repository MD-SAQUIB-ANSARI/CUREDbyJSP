<jsp:useBean id="emp" class="com.mypack.model.Employe" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>
<%@page import="java.util.*" %>
<%@page import="com.mypack.model.*" %>

<%
	 List<Employe> e= dao.findAllRecord();
 	Iterator<Employe> itr=e.iterator();
 %>
	 <table border="2" width="60%">
	 <tr>
			<th>Employee Number is </th>
			<th>Employee Name is</th> 
			<th>Employee Salary is </th> 
			<th>Employee Contact is </th>
			<th>Modify </th> 
			<th>Delete </th>
			</tr>
<%
		while(itr.hasNext())
		{
			emp=itr.next();
			out.println("<tr>");
			out.println("<td>  "+emp.getEmpNo()+"</td>");
			out.println("<td>"+emp.getEmpName()+"</td>");
			out.println("<td> "+emp.getEmpSal()+"</td>");
			out.println("<td> "+emp.getContact()+"</td>");
			out.println("<td><a href=''>Update</a> </td>");
			out.println("<td><a href=''>Delete</a></td>");
			out.println("</tr>");
%>
			
			
<%
		}
	
%>
</table>
