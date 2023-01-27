<%@page import="com.service.AddFlightBusinessLogic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="com.entity.*" %>
<%@page import="com.service.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   List <Flight> flight =   AddFlightBusinessLogic.getAllFlights();

   for(Flight f: flight)
   {
	   out.println("Airlines = "+f.getAirline().getAirlineName()+" Source = "+f.getPlaces().getSource()+" Destination = "+f.getPlaces().getDestination()+" Ticket Price"+f.getTicketPrice());
   }

%>


</body>
</html>