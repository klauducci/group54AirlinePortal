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
		<center>
			<h1><u>Customer Representative Home</u></h1>
			<h2>What would you like to do?</h2>
			
			<hr>
			
		</center>
		
		<!-- Part 1  --> 
		
		<h3><a id="part1">Make flight reservations</a></h3>
		
		<form method="get" action="rep_1_make_reservation.jsp">
			<table>
				<tr>
					<td>User Identifier:</td><td><input type="text" name="userID"></td>
				</tr>
				<tr>
					<td>Flight Identifier:</td><td><input type="text" name="flightID"></td>
				</tr>
				<tr>
					<td>Price:</td><td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td>Seat Number:</td><td><input type="text" name="seatNumber"></td>
				</tr>
				<tr>
					<td>Fee:</td><td><input type="text" name="fee"></td>
				</tr>
				<tr>
					<td>Date:</td><td><input type="text" name="date"></td>
				</tr>
				
			</table>
			<input type="submit" value="Make Reservation">
		</form>
		
		<hr>
		
		<!-- Part 2  --> 
		
		<h3><a id="part1">Edit flight reservations</a></h3>
		
		<form method="get" action="rep_2_edit_reservation.jsp">
			<table>
				<tr>
					<td>Ticket Identifier:</td><td><input type="text" name="ticketID"></td>
				</tr>
				<tr>
					<td>User Identifier:</td><td><input type="text" name="userID"></td>
				</tr>
				<tr>
					<td>Flight Identifier:</td><td><input type="text" name="flightID"></td>
				</tr>
				<tr>
					<td>Price:</td><td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td>Seat Number:</td><td><input type="text" name="seatNumber"></td>
				</tr>
				<tr>
					<td>Fee:</td><td><input type="text" name="fee"></td>
				</tr>
				<tr>
					<td>Date:</td><td><input type="text" name="date"></td>
				</tr>
				
			</table>
			<input type="submit" value="Edit Reservation">
		</form>
		
		
		
		<hr>
		
		<!-- Part 3  --> 
		
		
		
		<h3><a id="part3">Add, Edit, Delete Information for Aircrafts, Airports, and flights</a></h3>
		
		<p>Aircrafts have Plane_ID, Manufacturer, Seats, Name, and Owner</p>
		<p>Aircrafts have Plane_ID, Manufacturer, Seats, Name, and Owner</p>
		<p>Aircrafts have Plane_ID, Manufacturer, Seats, Name, and Owner</p>
		
		<form method="get" action="rep_4_add_edit_delete.jsp">
			<table>
				
				
				<tr>
					<td>edit/delete:</td><td><input type="text" name="edit_delete"></td>
				</tr>
				
				<tr>
					<td>aircraft/airport/flight:</td><td><input type="text" name="typesChange"></td>
				</tr>
				
				<tr>
					<td>Value you would like to edit:</td><td><input type="text" name="valueEdit"></td>
				</tr>
				
				<tr>
					<td>If edit, what would you like it to be now:</td><td><input type="text" name="newValue"></td>
				</tr>
				
				
				
			</table>
			<input type="submit" value="Get Waiting List">
		</form>
		
		<hr>
		
		<!-- Part 4  --> 
		
		
		<h3><a id="part4">Check waiting list of flight</a></h3>
		
		<form method="get" action="rep_4_waiting_list.jsp">
			<table>
				<tr>
					<td>Flight Identifier:</td><td><input type="text" name="flightID"></td>
				</tr>
				
			</table>
			<input type="submit" value="Get Waiting List">
		</form>
		
		<hr>
		
		<!-- Part 5  --> 
		
		
		<h3><a id="part5">All flights of an airport</a></h3>
		
		<form method="get" action="rep_5_airport_flights.jsp">
			<table>
				<tr>
					<td>Airport ID:</td><td><input type="text" name="airportID"></td>
				</tr>
				
			</table>
			<input type="submit" value="Get Arrivals and Departures">
		</form>
		
		<hr>
		
		<!-- Part 6  --> 
		
		
		<h3><a id="part6">Reply to users' questions</a></h3>
		
		<%
	
		
		try {
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			String str = "select questions_table.question_id, questions_table.question, questions_table.answer, questions_table.user_ID FROM questions_table ";
			ResultSet result = stmt.executeQuery(str);
			
			out.print("<table>");
			out.print("<tr>");
			
			out.print("<td>");
			out.print("Question ID");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Question");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Answer");
			out.print("</td>");
			
			out.print("<td>");
			out.print("User ID");
			out.print("</td>");
			
			
			out.print("</tr>");
			
			while(result.next()){
				
				out.print("<tr>");
				
				out.print("<td>");
				out.print(result.getString("questions_table.question_id"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("questions_table.question"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("questions_table.answer"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("questions_table.user_ID"));
				out.print("</td>");
				
				out.print("</tr>");
			
			}
			
			out.print("</table>");
			
		} 
	
		catch (Exception e) {
			
			out.print(e);
			
		}
	
	%>
		
		<form method="get" action="rep_6_answering_questions.jsp">
			<table>
				<tr>
					<td>Question ID:</td><td><input type="text" name="questionID"></td>
				</tr>
				
				<tr>
					<td>Answer:</td><td><input type="text" name="answer"></td>
				</tr>
				
			</table>
			<input type="submit" value="Answer the Question">
		</form>
		
		<hr>
		
		
		
		
		
	
		<form method="post" action="HomePage.jsp">		  
			<input type="submit" value="Log Out" />
		</form>
	</body>
</html>