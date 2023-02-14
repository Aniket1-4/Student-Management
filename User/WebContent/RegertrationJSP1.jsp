<%@page import="javax.annotation.Generated"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<jsp:forward page="Home.jsp"></jsp:forward>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration JSP</title>
</head>
<body>

<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm_password=request.getParameter("confirm_password");
String mobile=request.getParameter("mobile");

 if(password.equals(confirm_password))
 {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wejm4","root","root");
	 PreparedStatement ps=con.prepareStatement("insert into details values(?,?,?,?,?,?)");
	 ps.setString(1, id);
	 ps.setString(2, name);
	 ps.setString(3, email);
	 ps.setString(4, password);
	 ps.setString(5, confirm_password);
     ps.setString(6, mobile);
     ps.executeUpdate();
     out.println("<h1>Register Successfully</h1>");
 }
 else
 {
	out.println("<h1>Register Failed</h1>");
 }

/* response.sendRedirect("http://localhost:8080/User/Login.jsp"); */

%>


</body>
</html>