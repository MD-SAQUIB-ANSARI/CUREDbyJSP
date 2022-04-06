<%
	//session.invalidate();
	session.removeAttribute("logedInUser");
	session.setAttribute("msg", "Logout Succssfully");
	response.sendRedirect("index.jsp");

%>