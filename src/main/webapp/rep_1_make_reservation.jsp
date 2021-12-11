<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Registration Portal</title>
</head>
<body>

	<center>
	
		<h1>New Registration Portal</h1>
		
		<hr>
	
	</center>

	<%
	
		
		try {
			
			
			String user_identifer = request.getParameter("userID");
			String flight_identifier = request.getParameter("flightID");
			String price = request.getParameter("price");
			String seat_number = request.getParameter("seatNumber");
			String fee = request.getParameter("fee");
			String date = request.getParameter("date");
			
			out.println("Entered information: ");
			out.println("<br>");
			out.println("     User Identifier: " + user_identifer);
			out.println("<br>");
			out.println("     Flight Identifier: " + flight_identifier);
			out.println("<br>");
			out.println("     Price: " + price);
			out.println("<br>");
			out.println("     Seat Number: " + seat_number);
			out.println("<br>");
			out.println("     Fee: " + fee);
			out.println("<br>");
			out.println("     Date: " + date);
			out.println("<hr>");
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			String str = "INSERT INTO `tickets` VALUES (NULL,"+flight_identifier+","+ price +",'"+seat_number+ "',"+fee+",'"+date+"',"+user_identifer+")";
			stmt.executeUpdate(str);
			
			//Get Ticket ID
			str = "select tickets.tid FROM tickets";
			String tid_string = "Hello"; 
			ResultSet result = stmt.executeQuery(str);
			
			while(result.next()){
				tid_string = result.getString("tickets.tid");
			}
			
			out.print("You're reservation has been made. Here's you ticket ID: " + tid_string);
			
			
		} 
	
		catch (Exception e) {
			
			out.print(e);
			out.print("Unable to register for flight. Check if information is accurate.");
			
		}
	
	%>

</body>
</html>