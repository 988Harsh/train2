<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% session.setAttribute("uname",null);
		out.println("Successfully Logged Out!!!");
	%>
	<jsp:include page="login_page.html"></jsp:include>
	
</body>
</html>