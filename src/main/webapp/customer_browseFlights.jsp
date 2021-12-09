<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Browse Flights</title>
	</head>
	
	<body>
		<br>
		Browse Flights
		<br>
		------------------------------------------------------------------------ <br>
		View All Flights
		<br>
		<form method="get" action="customer_queryAllFlights.jsp">		  
			<input type="submit" value="View All Flights" />
		</form>
		<br>
		
		------------------------------------------------------------------------ <br>
		
		View Airport ID Key
				<br>
				<form method="get" action="customer_viewAirportCodes.jsp">		  
					<input type="submit" value="View Airport Codes" />
				</form>
				<br>
				
		<form method="get" action="customer_queryVF.jsp">
			<table>
				<tr>
					<td>Airport Take-off ID</td><td><input type="text" name="f1"></td>
				</tr>
				<tr>
					<td>Airport Destination ID</td><td><input type="text" name="f2"></td>
				</tr>
				<tr>
					<td>Date (YYYY-MM-DD)</td><td><input type="text" name="fdate"></td>
				</tr>
				
				<tr>
				<td><input id="way" name="way" type="radio" value="0" /> <label for="ow">One Way</label><br /></td>
				<tr></tr>
		    	<td><input id="way" name="way" type="radio" value="1" /> <label for="rt">Round Trip</label><br /></td></tr>
		    	<tr></tr><tr></tr><tr></tr>
		    	<tr>
		    	<td><input id="flex" name="flex" type="radio" value="0" /> <label for="e">Exact Date </label><br /></td>
		    	<tr></tr>
		    	<td><input id="flex" name="flex" type="radio" value="1" /> <label for="f">Flexible Dates (+/- 3 Days)</label><br /></td></tr>
				

			</table>
			<input type="submit" value="Show Flights">
		</form>
		
		<br>
		
		------------------------------------------------------------------------ <br>
		Sort Flights
				<br>
				<form method="get" action="customer_sortFlights.jsp">		  
					<input type="submit" value="Sort Flights" />
				</form>
				<br>
		------------------------------------------------------------------------ <br>
		Filter Flights
				<br>
				<form method="get" action="customer_filterFlights.jsp">		  
					<input type="submit" value="Fliter Flights" />
				</form>
				<br>
		
		
	</body>
</html>