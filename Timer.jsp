<script>
	
<%String clock = request.getParameter("clock");
if (clock == null)
	clock = "60";%>
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
				style="border: 0px solid white; font-size: 25px; font-weight: bold; margin-left: 1%">
		</div>
	</form>
	<script>
	<!--
		timer();
		//-->
		function keyListener(event) {
			timer();
		}
	</script>
</body>