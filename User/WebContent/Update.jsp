<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

<style>
nav {
	padding: 35px 100px;
	background-color: #D6DBDF;
	background-image: url(/tram-7524963_1920);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

#anc {
	margin-left: 250px;
	width: 600px;
	padding: 15px 8px;
}

a {
	text-decoration: none;
	color: aliceblue;
	margin-left: 10px;
	padding: 15px 8px;
	background-color: #FF4500;
	border-radius: 10px;
}

body {
	background: url(./sunset-5004905_1920.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}
#table{
color: white; 

}
</style>

</head>
<body>

	<nav>
		<div id="anc">
			<a href="http://localhost:8080/User/Home.jsp">HOME</a> <a
				href="http://localhost:8080/User/Search.jsp">SEARCH</a> <a
				href="http://localhost:8080/User/Add.jsp">ADD</a> <a
				href="http://localhost:8080/User/Update.jsp">UPDATE</a> <a
				href="http://localhost:8080/User/Remove.jsp">REMOVE</a> <a
				href="http://localhost:8080/User/Login.jsp">LOGOUT</a>
		</div>
	</nav>
	<form action="./UpdateJsp.jsp" method="post">
	Enter id:<input type="text" name="id" placeholder="Enter ID" ><br>
	<br>
	<input type="submit" value="Update">
	
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wejm4", "root", "root");
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from details");
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
	<div id="table">
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
	</div>
	<%
	}
	%>
	
	</form>

</body>
</html>