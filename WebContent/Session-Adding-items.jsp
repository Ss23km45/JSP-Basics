<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My To-Do List</title>
</head>
<body>
<jsp:include page="my-Header.html"></jsp:include>
<br/><br/>

<!-- Step 1: Create a HTML Form to enter Date -->
<form action="Session-Adding-items.jsp">

Enter To-Do List in your Bag : <input type="text" name ="myList">
<br/><br/>

<input type="submit" name="Submit">

</form>
<br/><br/>

<!-- Step 2: Read the Data and Display it based on every session -->
<%
//Get the Items from the session
	List<String> mytoDo = (List<String>) session.getAttribute("MyBucket");
//Check if the item is null, if yes create a new list and setit
	if(mytoDo == null){
		mytoDo = new ArrayList<String>();
		session.setAttribute("MyBucket", mytoDo);
	}

//Get the Item and add it in List<string>
	String item = request.getParameter("myList");
	boolean isPresent = mytoDo.contains(item);
	if(item!=null && (!item.isEmpty()) && !isPresent){
		mytoDo.add(item);
	}

%>
<br/><br/>
<!-- Step 2: Display Data in Web Page -->
<ol>
<%

	for(String vl : mytoDo){
		out.println("<li>" + vl + "</li>");
	}

%>
</ol>

<br/><br/>	
<jsp:include page="my-footer.jsp"></jsp:include>
</body>
</html>