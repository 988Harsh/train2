<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>
</head>
<body>

	<% 
		if( request.getSession().getAttribute("uname") != null )
		{

			out.println("<a href=\"display.jsp\">View all Employees</a><br>");
			out.println("<a href=\"add.jsp\">Add Employee</a><br>");
			out.println("<a href=\"logout.jsp\">logout</a>");
			
		}
		else
		{
			out.println("Please Login First!!!");
			%>
			<jsp:include page="login_page.html"></jsp:include>
		<% 
		}
		
			
		
	%>
</body>
</html>