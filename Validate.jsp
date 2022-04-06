<%--   
--%>
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="dao" class="com.mypack.dao.UserDao"></jsp:useBean>

	<jsp:setProperty property="*" name="user"/>
	
<%
	Boolean result= dao.validatin(user);
	if(result==true)
	{
		session.setAttribute("loginUser", user);
		session.setMaxInactiveInterval(120);
		response.sendRedirect("welcome.jsp");
	}else
	{
		response.sendRedirect("error.jsp");
	}
		
%>

