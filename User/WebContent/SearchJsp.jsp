<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String  id1 =request.getParameter("id");
int id=Integer.parseInt(id1.trim());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>

</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wejm4", "root", "root");
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from details where id='" + id + "'");
	System.out.println(rs);

	while (rs.next()) {
	%>

	<%
	String user_id = rs.getString("id"); 
	String user_name = rs.getString("name");
	String email = rs.getString("email");
	String password = rs.getString("password");
	String mobile = rs.getString("mobile");
	%>
	<table>
		<tr>
			<th>User ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Mobile</th>
		</tr>
		<tr>
			<td><%=user_id%></td> 
			<td><%=user_name%></td>
			<td><%=email%></td>
			<td><%=password%></td>
			<td><%=mobile%></td>
		</tr>
	</table>
	<%
	}
	%>

</body>
</html>