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
<div style="margin-left:25%;">
<h1>Below is the flight you are booking</h1>
<table style="width:70%">
  <tr style="background-color:black; color:white;">
    <td>Flight ID</td>
    <td>Airlines</td>
    <td>Source</td>
    <td>Destination</td>
     <td>Ticket Price</td>
    
  </tr>
	
	<%
	  String fid =  request.getParameter("fid");
    String date =  request.getParameter("date");
    String pno =  request.getParameter("pno");
    String email =  request.getParameter("email");
    String name =  request.getParameter("name");
    String age =  request.getParameter("age");

      
      List <Flight> flight =   AddFlightBusinessLogic.getAllFlights();

      for(Flight f: flight)
      {
    	  if(f.getF_ID()==Integer.parseInt(fid))
    	  {
   	   //out.println("Airlines = "+f.getAirline().getAirlineName()+" Source = "+f.getPlaces().getSource()+" Destination = "+f.getPlaces().getDestination()+" Ticket Price"+f.getTicketPrice());
    	%>
    	<tr>
    	 <td><%=f.getF_ID() %></td>
    <td><%=f.getAirline().getAirlineName() %></td>
    <td><%=f.getPlaces().getSource() %></td>
    <td><%=f.getPlaces().getDestination() %></td>
    <td><%=f.getTicketPrice() %> </td>
 
    	</tr>
    	<% 
    	  }
    	  }
      
    
%>


</table>


<%
               

                 out.println("Fid = "+fid);
                 out.println("date = "+date);
                 out.println("pno = "+pno);
                 out.println("email = "+email);
                 out.println("name = "+name);
                 out.println("age = "+age);

%>
</div>
</body>
</html>