<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	if( request.getSession().getAttribute("uname") != null )
	{
	%>
	<form action="insert.jsp">
	Enter Employee ID: <input type="text" name="emp_id"><br>
	Enter First Name: <input type="text" name="first_name"><br>
	Enter Last Name: <input type="text" name="last_name"><br>
	Enter Salary: <input type="text" name="salary"><br>
		<input type="submit" value="add">
	</form>
	<%
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