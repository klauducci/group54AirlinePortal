<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Creation</title>
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
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");

		//Make an insert statement for the Sells table:
		String insert = "call airline_portal.create_customer"
				+ "(?, ?, ?, ?)";
		

		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, first);
		ps.setString(2, last);
		ps.setString(3, user);
		ps.setString(4, pass);
		ps.executeUpdate();

		stmt = con.createStatement();
		//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
		String str = "select user_ID from login where username='"+user+"' and password='"+pass+"' order by user_ID desc limit 1";
		//Run the query against the database.
		ResultSet result = stmt.executeQuery(str);
		String id="";
		while(result.next()){
		id = result.getString("user_ID");
		}
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("Account created. Your user ID is "+id+". Please write this down! Feel free to go back and try something else");
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("Account not created. Please go back and try again");
	}
%>
	<form method="post" action="HomePage.jsp">
		    <!-- note the show.jsp will be invoked when the choice is made -->
			<!-- The next lines give HTML for radio buttons being displayed -->
		  
		<input type="submit" value="Back To Login Page" />
	</form>
</body>
</html>