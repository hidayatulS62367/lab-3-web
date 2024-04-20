<%-- 
    Document   : ArrayList
    Created on : 17 Apr 2024, 3:35:01 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            ArrayList<String> studentList=new ArrayList<String>();
            
            studentList.add(0, "Muhammad Azam ");
            studentList.add(1, "Peter Chong");
            studentList.add(2, "Rahimah Mansor ");
            studentList.add(3, "Sri Devi ");
            studentList.add(4, "Ng Hue Ween");
            studentList.add(5, "S.Nagarajan ");
            
            out.println("<p>The number of records in ArrayList are " +studentList.size() + "</p>");
            
            for(int i=0; i < studentList.size(); i++)
            out.println("<p>Record " + (i+1) + " is " +studentList.get(i) + "</p>");
            %>
    </body>
    <br/><!-- comment -->
    <footer>&copy-Nur Hidayatul Ain </footer>
</html>
