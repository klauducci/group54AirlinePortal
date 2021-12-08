<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In Page</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();
		String role="";
		try {

			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the combobox from the index.jsp
			String username = request.getParameter("user");
			String password = request.getParameter("pass");
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
			String str = "call airline_portal.getLogInfo('"+username+"', '"+password+"');";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);
			if(result.next()){
				out.print("Welcome back, "+result.getString("fname")+" "+result.getString("lname")+"! We are glad to have our favorite "+result.getString("role")+" back online!");
				role=result.getString("role");
			}
			else{
				out.print("Sorry, login not found. Please try a different username or password");
			}
			
			

		} catch (Exception e) {
		}
		if(role.equals("admin")){%>
		<br>
		<form method="post" action="admin_homePage.jsp">		  
			<input type="submit" value="Go to Admin Home Page" />
		</form>
		
		<%}
		else if(role.equals("customer")){%>
		<br>
		<form method="post" action="customer_homePage.jsp">		  
			<input type="submit" value="Go to Customer Home Page" />
		</form>
		
		<%}
		else if(role.equals("rep")){%>
		<br>
		<form method="post" action="rep_homePage.jsp">		  
			<input type="submit" value="Go to Representative Home Page" />
		</form>
		
		<%}
		
	%>
	
	
	
	
	
	
	
	
	<form method="post" action="HomePage.jsp">		  
		<input type="submit" value="Log Out" />
	</form>
	
	
	

</body>
</html>
</body>
</html>