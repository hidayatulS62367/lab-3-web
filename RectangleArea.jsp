<%-- 
    Document   : RectangleArea
    Created on : 20 Apr 2024, 6:13:50 pm
    Author     : USER
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rectangle Area</title>
</head>
<body>
	
	
	<h1>Calculate Rectangle Area</h1>
	<form method="post" action="RectangleArea.jsp">
            <fieldset>
                <legend>Area of Rectangle</legend>
		<label for="firstLength">Enter the length of the first rectangle:</label>
		<input type="text" name="firstLength" id="firstLength">
		<br>
		<label for="firstWidth">Enter the width of the first rectangle:</label>
		<input type="text" name="firstWidth" id="firstWidth">
		<br>
		<label for="secondLength">Enter the length of the second rectangle:</label>
		<input type="text" name="secondLength" id="secondLength">
		<br>
		<label for="secondWidth">Enter the width of the second rectangle:</label>
		<input type="text" name="secondWidth" id="secondWidth">
		<br>
		<input type="submit" value="Calculate">
            </fieldset>
	</form>
	
	<%
		double firstLength = 0;
		double firstWidth = 0;
		double secondLength = 0;
		double secondWidth = 0;
		double firstArea = 0;
		double secondArea = 0;
		
		if (request.getMethod().equalsIgnoreCase("post")) {
			firstLength = Double.parseDouble(request.getParameter("firstLength"));
			firstWidth = Double.parseDouble(request.getParameter("firstWidth"));
			secondLength = Double.parseDouble(request.getParameter("secondLength"));
			secondWidth = Double.parseDouble(request.getParameter("secondWidth"));
			
			firstArea = firstLength * firstWidth;
			secondArea = secondLength * secondWidth;
		}
	%>
	
	<% if (firstArea > secondArea) { %>
		<p>The first rectangle has the greater area: <%= String.format("%.2f", firstArea) %></p>
	<% } else if (firstArea < secondArea) { %>
		<p>The second rectangle has the greater area: <%= String.format("%.2f", secondArea) %></p>
	<% } else { %>
		<p>The areas of rectangles are the same: <%= String.format("%.2f", firstArea) %></p>
	<% } %>
	
	
</body>
</html>
