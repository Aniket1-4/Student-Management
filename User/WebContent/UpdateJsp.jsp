<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.cj.xdevapi.Table"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
	<%

PrintWriter writer = response.getWriter();
String id = request.getParameter("id");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wejm4", "root", "root");
	PreparedStatement ps = conn.prepareStatement("select * from details where id=? ");
	String str="select * from details where name = '"+id+"'";
	ResultSet rs=ps.executeQuery(str);
}catch(Exception e)
{
	
} 
	%>