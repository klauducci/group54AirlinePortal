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
		<form method="post" action="customer_browseFlights.jsp">		  
			<input type="submit" value="Browse Flights!" />
		</form>
		<form method="post" action="HomePage.jsp">		  
			<input type="submit" value="Log Out" />
		</form>
	</body>
</html>