<%@ page import="java.sql.*,mypack.conClass" %>
<% 
	
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
<a href="index.html">Back to index</a>