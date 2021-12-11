<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Arrivals and Departures</title>
</head>
<body>

	<center>
	
		<h1>Arrivals and Departures</h1>
		
		<hr>
	
	</center>

	<%
		

		try {
			
			//Get Information
			String airport_id = request.getParameter("airportID");
			out.print("Entered Data");
			out.print("<br>");
			out.print("Airport ID: " + airport_id);
			
			out.print("<hr>");

			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			String str = "select flight.Flight_Num, flight.Plane_ID, flight.Domestic, flight.Origin, flight.Dest, flight.Dep_Time, flight.Arr_Time FROM flight WHERE flight.Dest = " + airport_id + " OR flight.Origin = "+airport_id;
			ResultSet result = stmt.executeQuery(str);
			
			out.print("<table>");
			out.print("<tr>");
			
			out.print("<td>");
			out.print("Flight Number");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Plane ID");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Domestic (0/1)");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Origin ID");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Destination ID");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Departure Time");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Arrival Time");
			out.print("</td>");
			
			out.print("</tr>");
			
			while(result.next()){
				
				out.print("<tr>");
				
				out.print("<td>");
				out.print(result.getString("flight.Flight_Num"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Plane_ID"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Domestic"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Origin"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Dest"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Dep_Time"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("flight.Arr_Time"));
				out.print("</td>");
				
				out.print("</tr>");
				
			}
			
			out.print("</table>");

		} 
		catch (Exception e) {
			out.print(e);
			out.print("Unable to check arrivals and departures. Check if airport identifier is correct.");
			
		}
	%>

</body>
</html>