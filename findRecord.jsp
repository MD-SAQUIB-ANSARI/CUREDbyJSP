
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="emp" class="com.mypack.model.Employe" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

<jsp:setProperty property="empNo" name="emp" param="userId"/>

<%
	 emp=dao.findRecord(emp);

%>
<html>
<body>
			<caption style="color:red;">
				Show :" <%=emp.getEmpName() %> " Personal Information.
			</caption><br><br>
		<table>

			<tr>
			<th> Emp No</th>
			<th> Emp Name</th>
			<th> Emp Salery</th>
			<th> Contact</th>
			</tr>
			
			<tr>
			<td><%=emp.getEmpNo() %></td>
			<td><%=emp.getEmpName() %></td>
			<td><%=emp.getEmpSal() %></td>
			<td><%=emp.getContact() %></td>
			</tr>
			
			
		</table>
		<a href="welcome.jsp">Home</a>
			<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	
	</body>
</html>