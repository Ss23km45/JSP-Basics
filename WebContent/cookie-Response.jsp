<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading Cookie Data</title>
</head>
<body>
<jsp:include page="my-Header.html"></jsp:include>

You Have successfully changed the Cookie Selection
<%
	//Step1: Read the Data from response.jsp
	String val = request.getParameter("favlanguage");
//URL Encoder
	val = URLEncoder.encode(val, "UTF-8");
	//Create a Cookie Object
	Cookie myCookie = new Cookie("my-favlanguage", val);
	//Create a Expiry time for this Cookie
	myCookie.setMaxAge(60*60*24*365);
	//set the cookie to browser so send response
	response.addCookie(myCookie);
%>

<!-- Add a Hyper link to navigate to Home Page -->
<a href="cookie-HomePage.jsp">Take me to my Home page</a>

<jsp:include page="my-footer.jsp"></jsp:include>
</body>
</html>