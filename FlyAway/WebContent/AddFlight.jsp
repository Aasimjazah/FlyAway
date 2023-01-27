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
            String airline =   request.getParameter("airline");
            String  source =   request.getParameter("source");
            String destination = request.getParameter("destination");
            String ticketPrice = request.getParameter("price");

            System.out.println("Airline ="+ airline);
            System.out.println("source ="+ source);
            System.out.println("destination ="+ destination);
            System.out.println("ticketPrice ="+ ticketPrice);
            
            Airlines a = new Airlines(airline);
            Places p = new Places(source, destination);
            Flight f = new Flight(a,p,ticketPrice);
            
            AddFlightBusinessLogic.addFlightDetails(f);
  
           out.println("Flight details added successfully");


%>

</body>
</html>