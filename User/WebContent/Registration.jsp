

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<style type="text/css">
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

input {
	height: 20px;
	width: 250px;
	font-size: 50px;
	font-size: 20px;
	border-radius: 8px;
}

#name {
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

#pass {
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
#email{
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
#rec{
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
#con{
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

span {
	height: 50px;
}

#login {
	margin-left: 90px;
}

a {
	text-decoration: none;
	color: aliceblue;
	align-content: center;
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

/* .aaa {
	margin: 0px 100px;
} */
</style>



</head>
<body>
	<form method="post" action="./RegertrationJSP1.jsp"  id="box">

		<h1>Admin Registration</h1>
		
		User id:<input type="text" name="id" placeholder="Enter id" id="id"><br>
					<br>

		Enter Name: <input type="text" placeholder="Enter Name" id="name" name="name"><br>
		<br>
		 Email:<input type="text" placeholder="Email" id="email" name="email"><br>
		<br>
		 Password: <input type="text" placeholder="password"id="pass" name="password"><br> 
		 <br>
		Confirm Password:<input type="text" placeholder="confirm_password" id="rec" name="confirm_password"><br> 
		<br>
		Mobile:<input type="text" placeholder="mobile" id="con" name="mobile"><br>
		<br>
		<input type="submit" value="Register">
		
		
	</form>
</body>
</html>