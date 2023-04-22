<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URLDecoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Home Page</title>
</head>
<body>
<br/><br/>
<jsp:include page="my-Header.html"></jsp:include>
<br/><br/>
<%
String myValue = "";
//REad the Cookie data from req
Cookie[] mycookie = request.getCookies();
if(mycookie!= null){
	for(Cookie val : mycookie){
		if("my-favlanguage".equals(val.getName())){
			
			myValue = URLDecoder.decode(val.getValue(), "UTF-8");
			break;
		}
	}
}

%>

<!-- Add some Data Specific to User selection -->
<h4> Best Langauage in the world <%=myValue %></h4>
<ul>
<li>yup yup yup</li>
<li>yup yup yup</li>
</ul>
<br/><br/>
<h4> Best Technology in the world <%=myValue %></h4>
<ul>
<li>yup yup yup</li>
<li>yup yup yup</li>
</ul>
<br/><br/>
<h4> Best Integrated code in the world <%=myValue %></h4>
<ul>
<li>yup yup yup</li>
<li>yup yup yup</li>
</ul>
<br/><br/>

<a href="cookie-Request.jsp">Change my Selection</a>
<br/><br/>
<jsp:include page="my-footer.jsp"></jsp:include>
</body>
</html>