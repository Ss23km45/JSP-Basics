<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - Scriptlet</title>
</head>
<body>
Printing a line for N times <br/>
MultiLine program in Scriptlet jsp tag;<br/>
<% for(int i=1;i<=10;i++){
	out.println("<br/> I Love Java " + i);
	}%>
</body>
</html>