<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Waitlist Portal</title>
</head>
<body>

	<center>
	
		<h1>Waitlist Portal</h1>
		
		<hr>
	
	</center>
	<%
		

		try {

			String flight_id = request.getParameter("flightID");
			out.print("Entered Data");
			out.print("<br>");
			out.print("Flight ID: " + flight_id);
			out.print("<hr>");

			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			String str = "select waiting_list.user_ID, waiting_list.FID FROM waiting_list WHERE FID = " + flight_id + ";";
			
			ResultSet result = stmt.executeQuery(str);
			
			//Create Table
			
			out.print("<table>");
			out.print("<tr>");
			
			out.print("<td>");
			out.print("Customer ID");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Flight ID");
			out.print("</td>");
			
			out.print("</tr>");
			
			while(result.next()){
				out.print("<tr>");
				
				out.print("<td>");
				out.print(result.getString("waiting_list.user_ID"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("waiting_list.FID"));
				out.print("</td>");
				
				out.print("</tr>");
			}
			out.print("<table>");
 
		} 
		catch (Exception e) {
			
			out.print("Unable to generate waitlist portal. Check if flight identifier is correct.");
			
		}
	%>

</body>
</html>