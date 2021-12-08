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
			
			//String year = request.getParameter("year");
			//String month = request.getParameter("month");
			
			String a1 = request.getParameter("f1");
			String a2 = request.getParameter("f2");
			String date = request.getParameter("fdate");
			String way = request.getParameter("way");
			String flex = request.getParameter("flex");
			//String way = request.getParameter("ow");
			
			
			out.print(a1);
			out.print(a2);
			out.print(date);
			out.print(way);
			
			String str = "Select * from flight;";
			
			
			if (flex.equals("0")) {
				str = "Select flight.fid, flight.AL_ID, flight.Flight_Num, flight.Plane_ID, flight.Domestic, flight.Origin, flight.Dest, flight.Dep_Time, flight.Arr_Time, flight.Stops, flight.One_Way, tickets.Price from flight join tickets on flight.FID = tickets.fid WHERE flight.Origin = " + a1 + " AND flight.Dest = " + a2 + " AND flight.Dep_Time >= '" + date + "' AND flight.Dep_Time <= '" + date + "' AND flight.One_Way = " + way;
			}
			else {
				str = "Select flight.fid, flight.AL_ID, flight.Flight_Num, flight.Plane_ID, flight.Domestic, flight.Origin, flight.Dest, flight.Dep_Time, flight.Arr_Time, flight.Stops, flight.One_Way, tickets.Price from flight join tickets on flight.FID = tickets.fid WHERE flight.Origin = " + a1 + " AND flight.Dest = " + a2 + " AND flight.Dep_Time >= '" + date + "' AND flight.Dep_Time <= '" + date + "' AND flight.One_Way = " + way;
			}
			
			
			
			
			//Make a SELECT query from the sells table with th e price range specified by the 'price' parameter at the index.jsp
			//String str = "Select flight.fid, flight.AL_ID, flight.Flight_Num, flight.Plane_ID, flight.Domestic, flight.Origin, flight.Dest, flight.Dep_Time, flight.Arr_Time, flight.Stops, flight.One_Way, tickets.Price from flight join tickets on flight.FID = tickets.fid WHERE flight.Origin = " + a1 + " AND flight.Dest = " + a2 + " AND flight.Dep_Time >= '" + date + "' AND flight.Dep_Time <= '" + date + "' AND flight.One_Way = " + way;
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);

			//Make an HTML table to show the results in:
			out.print("<table>");

			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			out.print("Flight ID");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Airline ID");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Flight Num");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Plane ID");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Domestic");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Origin");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Destination");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Departure Time");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Arrival Time");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Stops");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("One Way");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Price");
			out.print("</td>");
			
			
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out flight ID:
				out.print(result.getString("flight.FID"));
				out.print("</td>");
				
				
				out.print("<td>");
				//Print out AL_ID
				out.print(result.getString("flight.AL_ID"));
				out.print("</td>");
				
				//Print out Flight Num
				out.print("<td>");
				out.print(result.getString("flight.Flight_Num"));
				out.print("</td>");
				
				//Print out Plane_ID
				out.print("<td>");
				out.print(result.getString("flight.Plane_ID"));
				out.print("</td>");
				
				//Print out Domestic
				out.print("<td>");
				out.print(result.getString("flight.Domestic"));
				out.print("</td>");
				
				//Print out Origin
				out.print("<td>");
				out.print(result.getString("flight.Origin"));
				out.print("</td>");
				
				//Print out Dest
				out.print("<td>");
				out.print(result.getString("flight.Dest"));
				out.print("</td>");
				
				
				//Print out Dep_Time
				out.print("<td>");
				out.print(result.getString("flight.Dep_Time"));
				out.print("</td>");
				
				//Print out Arr_Time
				out.print("<td>");
				out.print(result.getString("flight.Arr_Time"));
				out.print("</td>");
				
				//Print out Stops
				out.print("<td>");
				out.print(result.getString("flight.Stops"));
				out.print("</td>");
				
				
				//Print out One_Way
				out.print("<td>");
				out.print(result.getString("flight.One_Way"));
				out.print("</td>");
				
				
				
				//Print out Price
				out.print("<td>");
				out.print(result.getString("tickets.Price"));
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