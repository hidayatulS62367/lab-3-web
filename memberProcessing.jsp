<%-- 
    Document   : memberProcessing
    Created on : 17 Apr 2024, 2:35:12 pm
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
        <h1>Passing data from main JSP page to othe JSP page</h1>
        <fieldset>
           <% String myIC=null;
            String myName=null;
            
            myIC=request.getParameter("my_icno");
            myName=request.getParameter("my_name");
           %>
           
           <p>Thank you for registering in this event</p>
           <p>This is your details;</p>
           <p>IC No : <%=myIC%></p>
           <p>Name : <%=myName%></p>
           
           
        </fieldset>
    </body>
</html>
