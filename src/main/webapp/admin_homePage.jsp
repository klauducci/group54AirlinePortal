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

		Please Select From a List of Admin Actions
		<br>
		<br>
		<br>
		------------------------------------------------------------------------
		
		
		<form method="get" action="admin_createRepAccount.jsp">
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
			<input type="submit" value="Create Customer Representative Account">
		</form>
		
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_editRepAccount.jsp">
			<table>
				<tr>
					<td>user_ID</td><td><input type="text" name="id"></td>
				</tr>
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
			<input type="submit" value="Edit Customer Representative Account">
		</form>
				------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_deleteRepAccount.jsp">
			<table>
				<tr>
					<td>user_ID</td><td><input type="text" name="id"></td>
				</tr>
				
			</table>
			<input type="submit" value="Delete Customer Representative Account">
		</form>
				------------------------------------------------------------------------
		<br>
		
		<form method="get" action="admin_monthlyReport.jsp">
			<table>
				<tr>
					<td>Month (in numeric form):</td><td><input type="text" name="month"></td>
				</tr>
				<tr>
					<td>Year:</td><td><input type="text" name="year"></td>
				</tr>
				
			</table>
			<input type="submit" value="Get A Monthly Sales Report">
		</form>
		
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_reservationFNUM.jsp">
			<table>
				<tr>
					<td>Flight Number:</td><td><input type="text" name="fnum"></td>
				</tr>
				
				
			</table>
			<input type="submit" value="Search Reservations by Flight Number">
		</form>
	
				------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_reservationName.jsp">
			<table>
				<tr>
					<td>First Name:</td><td><input type="text" name="first"></td>
				</tr>
				<tr>
					<td>Last Name:</td><td><input type="text" name="last"></td>
				</tr>
				
			</table>
			<input type="submit" value="Search Reservations By Customer Name">
		</form>
		
	------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_revenueFlight.jsp">
			<table>
				<tr>
					<td>Flight Number:</td><td><input type="text" name="fnum"></td>
				</tr>
			
				
			</table>
			<input type="submit" value="Get Revenue Summary By Flight">
		</form>
		
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_revenueAirline.jsp">
			<table>
				<tr>
					<td>Airline:</td><td><input type="text" name="AL"></td>
				</tr>
			
				
			</table>
			<input type="submit" value="Get Revenue Summary By Airline">
		</form>
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_revenueCustomer.jsp">
			<table>
				<tr>
					<td>First Name:</td><td><input type="text" name="first"></td>
				</tr>
				<tr>
					<td>Last Name:</td><td><input type="text" name="last"></td>
				</tr>
			
				
			</table>
			<input type="submit" value="Get Revenue Summary By Customer">
		</form>
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_mostProfitCustomer.jsp">
			<input type="submit" value="Get A List Of The Most Profitable Customer">
		</form>
		------------------------------------------------------------------------
		<br>
		<form method="get" action="admin_mostActiveFlights.jsp">
			<input type="submit" value="Get A List Of The Most Active Flights">
		</form>
		------------------------------------------------------------------------
		<br>
		<form method="post" action="HomePage.jsp">		  
			<input type="submit" value="Log Out" />
		</form>
		
		
	</body>
</html>