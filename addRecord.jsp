
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="emp" class="com.mypack.model.Employe"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

	<jsp:setProperty property="*" name="emp"/>
	
<%
	int result=dao.addRecord(emp);
	if(result>0){
	out.println("Row is Added...  "+result);
	}else{
	out.println("Something Went Wrong...");
	}
	
%>
<a href="add.jsp">Do you want to add More Record....</a>

	<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	