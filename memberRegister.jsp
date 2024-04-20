<%-- 
    Document   : memberRegister
    Created on : 17 Apr 2024, 2:21:59 pm
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
        <h1>Passing data from main JSP page to other JSP Page</h1>
        <form id="memberFrm" action="memberProcessing.jsp" method="post" onsubmit="return checkIcNo()">
            <fieldset><!-- comment -->
                <legend>Member Registration</legend>
                <label for="invoiceno">IC No *</label>
                <input type="text" id="icno"name="my_icno" size="15" placeholder="E.g 921012101245"><br/><!-- comment -->
                
                <label for="name">Name  </label>
                <input type="text" id="name" name="my_name" size="45" placeholder="Key in your name"><br/><!-- comment -->
                
                <p><input type="submit" id="btnSubmit" value="Submit"/>
                    <input type="reset" id="btnCancel" value="Cancel"/>
                    
                </p>
            </fieldset>
        </form>
        
                  
                    
                    
      
    </body>
</html>
