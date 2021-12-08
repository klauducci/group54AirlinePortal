<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();

		try {

			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the combobox from the index.jsp
			String first = request.getParameter("first");
			String last = request.getParameter("last");
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
			String str = "call airline_portal.admin_reservationName('"+first+"', '"+last+"');";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);

			//Make an HTML table to show the results in:
			out.print("<table>");

			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			out.print("Flight Number");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Seat Number");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Price");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Fee");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Date Purchased");
			out.print("</td>");
			
			
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				out.print(result.getString("Flight_Num"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("seat_num"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("price"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("fee"));
				out.print("</td>");
				
				out.print("<td>");
				out.print(result.getString("date_purchased"));
				out.print("</td>");
				
				out.print("</tr>");

			}
			out.print("</table>");

			//close the connection.
			con.close();

		} catch (Exception e) {
		}
	%>

</body>
</html>