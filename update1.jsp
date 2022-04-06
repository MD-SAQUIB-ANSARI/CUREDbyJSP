
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="emp" class="com.mypack.model.Employe" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

<jsp:setProperty property="empNo" name="emp" param="userId"/>

<%
	 emp=dao.findRecord(emp);
	

%>
<html>
<body>
	<form method="post" action="UpdateSuccsfully.jsp">
		<table>
		
			<caption>
				Employee Update Screen
			</caption>
			<tr>
			<td> Emp No</td>
			<td><input type="text" name="empNo" readonly value="<%=emp.getEmpNo() %>" ></td>
			</tr>
			<tr>
			<td> Emp Name</td>
			<td><input type="text" name="empName" value="<%=emp.getEmpName() %>" ></td>
			</tr>
			
			<tr>
			<td> Emp Salery</td>
			<td><input type="text" name="empSal" value="<%=emp.getEmpSal() %>"></td>
			</tr>
			
			<tr>
			<td> Contact</td>
			<td><input type="text" name="contact" value="<%=emp.getContact() %>" ></td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Update Employee"></td>
			</tr>
		</table>
	</form>
		<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	
</body>
</html>