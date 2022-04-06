
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="emp" class="com.mypack.model.Employe" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

	<jsp:setProperty property="empNo" name="emp" param="userId"/>

<%
	int result=dao.deleteRecord(emp);
	if(result>0)
	{
		out.println("Row is Deleted...  "+result);
	}else{
		out.println("Record not Found...  ");
	}
%>
<br><a href="welcome.jsp">Home</a>

	<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	