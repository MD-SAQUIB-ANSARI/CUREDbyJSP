
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<html>
<body>
	<form method="post" action="findRecord.jsp">
		<table>
			<caption>
				Which Employee You Want Find? 
			</caption>
			<tr>
			<td> User ID</td>
			<td><input type="text" name="userId" placeholder="Employee Number"></td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Find Employee"></td>
			</tr>
		</table>
	</form>
		<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	
</body>
</html>