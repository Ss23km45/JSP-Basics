<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Name </title>
</head>
<body>
<h4 align="left">Entered details</h4>
First name :- <%=request.getParameter("firstName") %>
<br/><br/>
Last name :- <%=request.getParameter("lastName") %>

 <!--  Another way of displaying data that was readed from HTML -->
 <br/><br/>
 First Name : ${param.firstName}
 <br/><br/>
 
 Last Name : ${param.lastName}
</body>
</html>