<%-- 
    Document   : calculateCarLoan
    Created on : 17 Apr 2024, 3:16:14 pm
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
        <h1>Perform Car Loan Calculation </h1>
        <form id="memberFrm" action="processCalculateCarLoan.jsp" method="post" onsubmit="return checkIcNo()">
            <fieldset><!-- comment -->
                <legend>Loan Calculation</legend>
                <label for="loanAmount">Loan Amount *</label>
                <input type="text" id="loanAmount"name="loanAmount" size="15" placeholder="Amount"><br/><!-- comment -->
                
                <label for="loanPeriod">Period </label>
                   <select name="loanPeriod">
                    <option value="3 years">3 years</option>
                    <option value="4 years">4 years</option>
                    <option value="5 years">5 years</option>
                    <option value="7 years">7 years</option>
                   </select>
                <p><input type="submit" id="btnSubmit" value="Submit"/>
                    <input type="reset" id="btnCancel" value="Cancel"/>
                </p>
            </fieldset>
            
        </form>
        
        <footer>&copy-Nur Hidayatul Ain</footer>
        
    </body>
</html>
