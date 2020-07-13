<%@ page import="java.sql.*" %>
<%@ page import="mypack.conClass" %>
<%
	int emp_code = Integer.parseInt(request.getParameter("emp_id"));
	String fname = request.getParameter("first_name");
	String lname = request.getParameter("last_name");
	float salary = Float.parseFloat(request.getParameter("salary"));
	
	Connection con = conClass.getcon();
	PreparedStatement pst = con.prepareStatement("insert into employee(emp_id,first_name,last_name,salary) values(?,?,?,?)") ;
	pst.setInt(1,emp_code);
	pst.setString(2,fname);
	pst.setString(3,lname);
	pst.setFloat(4,salary);
	
	pst.execute();
	con.close();
%>
<jsp:forward page="index.jsp"></jsp:forward>