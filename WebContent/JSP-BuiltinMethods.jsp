<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Built In Methods Examples</title>
</head>
<body>
<h1 align="center">JSP Build in Methods</h1>
<br/>
Requested User agent details : <%= request.getHeader("User-Agent") %>
<br/><br/><br/><br/>

Requested User agent Locale : <%= request.getLocale() %>
</body>
</html>