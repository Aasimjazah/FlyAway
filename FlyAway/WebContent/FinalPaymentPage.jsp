<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.entity.*" %>
     <%@ page import="com.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

                        String barcodeValue =  request.getParameter("barcodeValue");
						String fid =  request.getParameter("fid");
						String date =  request.getParameter("date");
						String pno =  request.getParameter("pno");
						String email =  request.getParameter("email");
						String name =  request.getParameter("name");
						String age =  request.getParameter("age");
						String ticketNo =  request.getParameter("ticketNo");
				
                      Pessenger p = new Pessenger(Integer.parseInt(fid),date,Integer.parseInt(pno),email,name,age,ticketNo);
                        
                        if(barcodeValue.equals("Developer-Aasim"))
                        {
                        	
                        	AddPessengerDetailsBusinessLogic.addPessengerDetails(p);
                        	out.println("Thanks for booking Here is your ticket no: "+ticketNo );
                        	
                        }
                        else
                        {
                        	out.println("Payment not done please enter correct code: ");
                        	%>
                        	
                        	<a href="index.jsp">Try Again</a>
                        	<%
                        	
                        }


%>

</body>
</html>