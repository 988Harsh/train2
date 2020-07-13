<%@ page import="java.sql.*,mypack.conClass" %>
<% 

if(request.getSession().getAttribute("uname") != null)
{
	Connection con = conClass.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from employee");

	while(rs.next())
	{
		out.println("<b>Employee ID: "+rs.getInt(1)+"</br>First Name: "+rs.getString(2)+"</br>Last Name: "+rs.getString(3)+"</br>Salary: "+rs.getFloat(4)+"</b>");
		out.print("<hr>");
	}
	con.close();
	%>
	<a href="index.jsp">Back to index</a>
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
