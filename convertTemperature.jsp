<%-- 
    Document   : convertTemperature
    Created on : 20 Apr 2024, 5:40:11 pm
    Author     : USER
--%>

<%-- 
    Document   : convertTemperature
    Created on : 20 Apr 2024, 5:58:58 pm
    Author     : USER
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Convert Temperature</title>
</head>
<body>
	<h1>Convert Temperature</h1>
	<form method="post" action="convertTemperature.jsp">
            <fieldset>
                <legend>Convert temperature</legend>
            <label for="celsius">Celsius:</label>
		<input type="radio" name="temperatureType" id="celsius" value="celsius">
		<label for="fahrenheit">Fahrenheit:</label>
		<input type="radio" name="temperatureType" id="fahrenheit" value="fahrenheit">
		<br>
		<label for="celsiusValue">Enter temperature:</label>
		<input type="text" name="celsiusValue" id="celsiusValue">
		<input type="submit" value="Convert">
            </fieldset>
        </form>
	
	<%
		String temperatureType = request.getParameter("temperatureType");
		String celsiusValue = request.getParameter("celsiusValue");
		double fahrenheit = 0;
		double celsius = 0;
		
		if (temperatureType != null && celsiusValue != null) {
			if (temperatureType.equalsIgnoreCase("celsius")) {
				fahrenheit = (9.0 / 5) * Double.parseDouble(celsiusValue) + 32;
			} else if (temperatureType.equalsIgnoreCase("fahrenheit")) {
				celsius = (5.0 / 9) * (Double.parseDouble(celsiusValue) - 32);
			}
		}
	%>
	
	<% if (fahrenheit > 0) { %>
		<p>Temperature in Fahrenheit: <%= fahrenheit %></p>
	<% } else if (celsius > 0) { %>
		<p>Temperature in Celsius: <%= celsius %></p>
	<% } %>
	
</body>
</html>