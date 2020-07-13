<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login auth.</title>
</head>
<body>

	<%
	
	String uname = request.getParameter("uname");
	String pass = request.getParameter("pass");
	
	if(uname.equals("harsh") && pass.equals("root"))
	{
		out.println("Hello " + uname+"<br>");
		session.setAttribute("uname",uname);
		session.setAttribute("pass",pass);
		out.println("<a href=\"index.jsp\">Show options</a>");
		
	}
	else
	{
		out.print("Sorry Wrong Username Or Password!!!");
		%>
		<jsp:include page="login_page.html"></jsp:include>
	<% 
	}
	
	
	
	

	%>

</body>
</html>