<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>
<%
	String id=request.getParameter("c_id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/task1", "root", "root");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("delete from cart where c_id="+id);
		response.sendRedirect("cart-details.jsp");
		
	}catch(Exception e){
		System.out.print(e);
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete</title>
</head>
<body>

</body>
</html>