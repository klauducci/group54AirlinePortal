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

		//Get parameters from the HTML form at the index.jsp
		String id = request.getParameter("id");
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");

		//Make an insert statement for the Sells table:
		String insert = "call airline_portal.admin_editRep"
				+ "(?, ?, ?, ?, ?)";
		

		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, id);
		ps.setString(2, first);
		ps.setString(3, last);
		ps.setString(4, user);
		ps.setString(5, pass);
		ps.executeUpdate();

		
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("Account edited. Feel free to go back and try something else");
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("Account not edited. Please go back and try again");
	}
%>
	<form method="post" action="admin_homePage.jsp">
		    <!-- note the show.jsp will be invoked when the choice is made -->
			<!-- The next lines give HTML for radio buttons being displayed -->
		  
		<input type="submit" value="Back To Admin Home Page" />
	</form>
</body>
</html>