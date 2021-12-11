<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answering Question Portal</title>
</head>
<body>

	<center>
	
		<h1>Answering Question Portal</h1>
		
		<hr>
	
	</center>

	<%
		

		try {
			
			//Get the Values from the previous page
			String question_id = request.getParameter("questionID");
			String answer = request.getParameter("answer");
			
			out.print("Entered Data: ");
			out.print("<br>");
			out.print("Question ID: " + question_id);
			out.print("<br>");
			out.print("Answer: " + answer); 
		
			out.print("<hr>");
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			
			Statement stmt = con.createStatement();
			
			//Create Statement
			stmt = con.createStatement();
			String str = "UPDATE questions_table SET answer = '" + answer + "' WHERE question_ID = " + question_id;
			stmt.executeUpdate(str);
			

		} 
		catch (Exception e) {
			
			out.print(e);
			
		}
	
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

</body>
</html>