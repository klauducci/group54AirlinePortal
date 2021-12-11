<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editing Registration Portal</title>
</head>
<body>

	<center>
	
		<h1>Editing Registration Portal</h1>
		
		<hr>
	
	</center>

	<%
		

		try {
			
			String ticketID = request.getParameter("ticketID");
			String user_identifer = request.getParameter("userID");
			String flight_identifier = request.getParameter("flightID");
			String price = request.getParameter("price");
			String seat_number = request.getParameter("seatNumber");
			String fee = request.getParameter("fee");
			String date = request.getParameter("date");
			
			int i = 0;
			String str = "UPDATE tickets SET ";
			
			if(!user_identifer.equals("")){
				str = str + "userID = " + user_identifer + ",";
			}
			if(!flight_identifier.equals("")) {
				str = str + "fid = " + flight_identifier + ",";
			}
			if(!price.equals("")){
				str = str + "price = " + price + ",";
			}
			if(!seat_number.equals("")){
				str = str + "seat_num = " + seat_number + ",";
			}
			if(!fee.equals("")){
				str = str + "fee = " + fee + ",";
			}
			if(!date.equals("")){
				str = str + "date_purchased = " + date + ",";
			}
			
			str = str.substring(0, str.length() - 1);
			
			str = str + " WHERE tid = " + ticketID;
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			stmt.executeUpdate(str);
			
			//Make Table to check results
			String stringQuery = "SELECT tickets.tid, tickets.fid, tickets.price,tickets.seat_num,tickets.fee,tickets.date_purchased,tickets.userID FROM tickets WHERE tid = " + ticketID;;
			ResultSet result = stmt.executeQuery(stringQuery);
			
			result.next();
			
			out.print("<table>");
			
			out.print("<tr>");
			
				out.print("<td>");
				out.print("Ticket ID");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Flight ID");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Price");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Seat Number");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Fee");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Date Purchased");
				out.print("</td>");
				
				out.print("<td>");
				out.print("UserID");
				out.print("</td>");
			
			out.print("</tr>");
			
			out.print("<tr>");
			
				out.print("<td>");
				out.print(result.getString("tickets.tid"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.fid"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.price"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.seat_num"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.fee"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.date_purchased"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("tickets.userID"));
				out.print("</td>");
			
			out.print("</tr>");
			
			out.print("</table>");
			
			
			
			
		} 
		catch (Exception e) {
			out.print(e);
			out.print("<br>");
			out.print("Unable to edit registration. Check if information is correctly answered or if you actually put something.");
			
		}
	%>

</body>
</html>