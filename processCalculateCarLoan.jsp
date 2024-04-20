<%-- 
    Document   : processCalculateCarLoan
    Created on : 17 Apr 2024, 3:26:57 pm
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
        <h1>Perform Car Loan Calculation</h1>
        <fieldset>
           <%
		double Amount = 0;
		double Period = 0;
		double interestRate = 0;
		double totalInterest = 0;
		
		 Amount=request.getParameter("loanAmount");
                 Period=request.getParameter("loanPeriod");
            
           if (Period < 5) 
                {
	            interestRate = 0.028;
		} else {
		    interestRate = 0.045;
		}
		totalInterest = Amount * interestRate * Period;
       
	%>
	
	<p>Loan Request : <%= String.format("%.2f", Amount) %></p>
	<p>Period of payment : <%= Period %> years</p>
	<p>Interest Rate: <%= String.format("%.2f", interestRate * 100) %> % per year</p>
	<p>Total Interest: <%= String.format("%.2f", totalInterest) %></p> 
        </fieldset>
    </body>
</html>
