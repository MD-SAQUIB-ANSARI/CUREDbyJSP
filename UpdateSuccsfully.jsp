<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="emp" class="com.mypack.model.Employe" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

	<jsp:setProperty property="*" name="emp"/>

<%
int result=dao.updateRecord(emp);
if(result>0){
out.println("Row is Updated Successfully...  "+result);
}else{
out.println("Something Went Wrong...");
}	
%>

<br><a href="welcome.jsp">Do you want to add More Record....</a>

	<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

	