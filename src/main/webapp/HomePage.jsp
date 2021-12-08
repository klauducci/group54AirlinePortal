<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Welcome to Comp Sci Travel Agency!</title>
	</head>
	
	<body>

		Please log in to your CSTA account!
		<br>
		<form method="get" action="loggedIn.jsp">
			<table>
				<tr>    
					<td>Username</td><td><input type="text" name="user"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="text" name="pass"></td>
				</tr>
			</table>
			<input type="submit" value="Log In">
		</form>
		
		Or create a new customer account with us!
		<br>
		<form method="get" action="createAccount.jsp">
			<table>
				<tr>
					<td>First Name</td><td><input type="text" name="first"></td>
				</tr>
				<tr>
					<td>Last Name</td><td><input type="text" name="last"></td>
				</tr>
				<tr>    
					<td>Username</td><td><input type="text" name="user"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="text" name="pass"></td>
				</tr>
			</table>
			<input type="submit" value="Create Account">
		</form>
	<br>
		
		
	</body>
</html>