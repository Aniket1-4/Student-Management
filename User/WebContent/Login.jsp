<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
h1 {
	color: tomato;
}

#box {
	 margin-left: 500px; 
	/* hight: 1000px;
	width: 350px; */
	/* border: 1px solid; */
	/* background-color: #EAECEE; */
	/* border-radius: 8px; */
}

 input{
	height: 20px;
	width: 250px;
	font-size: 50px;
	font-size: 20px;
	border-radius: 8px;
	
}
#user_name{
    background: transparent;
    border: none;
    height: 35px;
    color: white !important;
    border: 1px solid transparent;
    background: rgba(255, 255, 255, 0.40);
    border-radius: 40px;
    padding-left: 20px;
    padding-right: 20px;
    transition: 0.9s;
}
#id{
 background: transparent;
    border: none;
    height: 35px;
    color: white !important;
    border: 1px solid transparent;
    background: rgba(255, 255, 255, 0.40);
    border-radius: 40px;
    padding-left: 20px;
    padding-right: 20px;
    transition: 0.9s;

}
#pass{
    background: transparent;
    border: none;
    height: 35px;
    color: white !important;
    border: 1px solid transparent;
    background: rgba(255, 255, 255, 0.40);
    border-radius: 40px;
    padding-left: 20px;
    padding-right: 20px;
    transition: 0.3s;
}

span{
height: 50px;
}
#login{
margin-left:90px;
}

.anc {
	text-decoration: none;
	color: aliceblue;
	align-content:center;
	padding: 7px 40px;
	background-color: green;
	border-radius: 20px;
}

body {
	background: url(./sunset-5004905_1920.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	font-size: 20px;
	
}
a{
color: white;
}
</style>
</head>
<body>
	<h1 align="center"> Admin Login </h1>

	
		<form action="./LoginJsp.jsp" method=post id="box">
		
			        User id:<input type="text" name="id" placeholder="Enter id" id="id"><br>
					<br>

					User Name:<input type="text" name="name" placeholder="User Name" id="user_name"><br>
					<br>
					
					Password:<input type="text" name="password" placeholder="Password" id="pass"><br>
					<br>
					
					<!-- Confirm_Password: <input type="text" name="confirm_password" placeholder="Confirm Password" id="pass"><br>
					<br>
					 -->
					<input type="submit" value="Login">
					<br>
					<a href="http://localhost:8080/User/Registration.jsp" >Don't have an Account?</a>
		</form>
	
</body>
</html>