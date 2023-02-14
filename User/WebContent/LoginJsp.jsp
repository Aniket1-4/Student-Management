
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginJSP</title>
</head>
<body>
<% 
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String password=request.getParameter("password");
String confirm_password=request.getParameter("confirm_password"); 
if(password.equals(confirm_password)) 
{
	
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wejm4","root","root");
	PreparedStatement ps=conn.prepareStatement("select * from details where name= '"+name+"'");
	
	ResultSet rs=ps.executeQuery();
	
	
}

	
	response.sendRedirect("http://localhost:8080/User/Home.jsp");
%> 
<br><a href="Home.jsp">HOME</a>
%>
</body>
</html>