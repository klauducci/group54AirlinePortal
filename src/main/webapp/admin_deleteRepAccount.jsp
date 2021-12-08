<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Edit</title>
</head>
<body>
	
	
	
	<%
	try {

		
		
		
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();	
		
		//Create a SQL statement
		Statement stmt = con.createStatement();
		//Get the combobox from the index.jsp
		String id = request.getParameter("id");
		//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
		String str = "call airline_portal.admin_deleteRep('"+id+"');";
		//Run the query against the database.
		ResultSet result = stmt.executeQuery(str);

		
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("Account deleted. Feel free to go back and try something else");
		
	} catch (Exception ex) {
		out.println(ex);
		out.print("Account not deleted. Please go back and try again");
	}
%>
	<form method="post" action="admin_homePage.jsp">
		    <!-- note the show.jsp will be invoked when the choice is made -->
			<!-- The next lines give HTML for radio buttons being displayed -->
		  
		<input type="submit" value="Back To Admin Home Page" />
	</form>
</body>
</html>