<%-- 
    Document   : mainPage
    Created on : 17 Apr 2024, 3:54:35 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="headerPage.jsp" %>
        
        <div id="header" style="background-color: white;">
        <h1><strong>Using JSP Include directive</strong></h1>
        <p style="color: red">Java Server Page(JSP) is a technology for controlling the content or appearance of web pages through the use of servlets,small programs that are specified in web page ans run on the web server to modify the web before it is sent to the user ho request it.</p>
        </div>
        
        <%@include file="footerPage.jsp" %>
    </body>
</html>
