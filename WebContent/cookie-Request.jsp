<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set your Cookie here</title>
</head>
<body>
<jsp:include page="my-Header.html"></jsp:include>
<br/><br/>
<form action="cookie-Response.jsp">
Select your Faviorite programming language : <select name="favlanguage">
<option>Java</option>
<option>Python</option>
<option>Ruby</option>
<option>PHP</option>
<option>  Artifical Intelligence</option>
<option> Machine Learning </option>
</select>
<br/><br/>
<input type="submit" name="Submit"> </input>
</form>

<br/><br/>
<jsp:include page="my-footer.jsp"></jsp:include>
</body>
</html>