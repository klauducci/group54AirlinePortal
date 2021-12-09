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

		Select Filters For Flight
		<br>
		<br>
		------------------------------------------------------------------------
		
		
		<form method="get" action="customer_queryFP.jsp">
			<table>
				<tr>
					<td>Min Price</td><td><input type="text" name="minPrice"></td>
				</tr>
				<tr>
					<td>Max Price</td><td><input type="text" name="maxPrice"></td>
				</tr>
				
			</table>
			<input type="submit" value="Filter by Price">
		</form>
		
		------------------------------------------------------------------------
		<br>
		<form method="get" action="customer_queryFS.jsp">
			<table>
				<tr>
					<td>Number of Stops</td><td><input type="text" name="stops"></td>
				</tr>

			</table>
			<input type="submit" value="Filter by Stops">
		</form>
				------------------------------------------------------------------------
		<br>
		<form method="get" action="customer_queryFA.jsp">
			<table>
				<tr>
					<td>Airline Code (number)</td><td><input type="text" name="airline"></td>
				</tr>
				
			</table>
			<input type="submit" value="Filter by Airline">
		</form>
				<form method="get" action="customer_viewAirlineCodes.jsp">		  
					<input type="submit" value="View Airline Codes" />
				</form>
				<br>
				------------------------------------------------------------------------
		<br>
		
		<form method="get" action="customer_queryFTOT.jsp">
			<table>
				<tr>
					<td>Earliest Departure Date/Time (24H) (YYYY-MM-DD HH:MM:SS)</td><td><input type="text" name="etTime"></td>
				</tr>
				<tr>
					<td>Latest Departure Date/Time (24H) (YYYY-MM-DD HH:MM:SS)</td><td><input type="text" name="ltTime"></td>
				</tr>
				
			</table>
			<input type="submit" value="Filter by Takeoff Time">
		</form>
		
		------------------------------------------------------------------------
		<br>
		<form method="get" action="customer_queryFLT1.jsp">
			<table>
				<tr>
					<td>Earliest Landing Date/Time (24H) (YYYY-MM-DD HH:MM:SS)</td><td><input type="text" name="elTime"></td>
				</tr>
				<tr>
					<td>Latest Landing Date/Time (24H) (YYYY-MM-DD HH:MM:SS)</td><td><input type="text" name="llTime"></td>
				</tr>
				
				
			</table>
			<input type="submit" value="Filter by Landing Time">
		</form>
	
		------------------------------------------------------------------------
		<br>
		<form method="post" action="HomePage.jsp">		  
			<input type="submit" value="Log Out" />
		</form>
		
		
	</body>
</html>