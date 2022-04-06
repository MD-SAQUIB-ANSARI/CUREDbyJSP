<%@page import="com.mypack.model.User"%>

<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
	<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<%
	User lUser =(User) session.getAttribute("loginUser");
	if(lUser==null)
	{
		session.setAttribute("msg", "Linked is Expire, Please Login Again");
		response.sendRedirect("index.jsp");
	}
%>
<html>
<body>
	<form method="post" action="addRecord.jsp">
		<table>
		
			<caption>
				Employee Registration Screen
			</caption>
			<tr>
			<td> Emp No</td>
			<td><input type="text" name="empNo" placeholder="Employee Number"></td>
			</tr>
			<tr>
			<td> Emp Name</td>
			<td><input type="text" name="empName" placeholder="Employee Name"></td>
			</tr>
			
			<tr>
			<td> Emp Salery</td>
			<td><input type="text" name="empSal" placeholder="Employee Salery"></td>
			</tr>
			
			<tr>
			<td> Contact</td>
			<td><input type="text" name="contact" placeholder="Contact"></td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Register Employee"></td>
			</tr>
		</table>
	</form>
	

<a href="logout.jsp" style="float:right;">Logout</a>

	<br><a href="welcome.jsp">Home</a>
</body>
</html>


