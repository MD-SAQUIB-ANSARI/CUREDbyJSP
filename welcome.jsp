<%@page import="com.mypack.model.User"%>
<jsp:useBean id="user" class="com.mypack.model.User" scope="session"></jsp:useBean>

<%
	User lUser =(User) session.getAttribute("loginUser");
	if(lUser==null)
	{
		session.setAttribute("msg", "Linked is Expire, Please Login Again");
		response.sendRedirect("index.jsp");
	}
%>

<script>
	
<%String clock = request.getParameter("clock");
if (clock == null)
	clock = "120";%>
	var timeout =
<%=clock%>
	;
	function timer() {
		if (--timeout > 0) {
			document.forma.clock.value = timeout;
			window.setTimeout("timer()", 1000);
		} else {
			document.forma.clock.value = "Time over";
		}
	}
</script>

<body>
	<form action="<%=request.getRequestURL()%>" name="forma">
		<div class="mb-3">
			<i class='fas fa-stopwatch' style='font-size: 50px;'></i><br> <input
				type="text" name="clock" value="<%=clock%>"
				style="border: 0px solid white;font-size:25px ;font-weight: bold; margin-left: 1%">
		</div>
	</form>
	<script>
	<!--
		timer();
	//-->
	</script>
</body>

<h1 style="float:right;">
Welcome: <jsp:getProperty property="userName" name="user"/>
</h1>
<a href="logout.jsp" style="float:right;">Logout</a>

<a href="add.jsp"> <img src="images/add.png"  style="width:42px;height:42px;"></a><br><br>
<a href="update.jsp"> <img src="images/update.png"  style="width:42px;height:42px;"></a><br><br>
<a href="delete.jsp"> <img src="images/delete.png"  style="width:42px;height:42px;"></a><br><br>
<a href="find.jsp"> <img src="images/find.png"  style="width:42px;height:42px;"></a><br><br>
<a href="findAll.jsp"> <img src="images/findall.jpg"  style="width:42px;height:42px;"></a><br><br>
