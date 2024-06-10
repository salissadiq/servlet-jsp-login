<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<%
response.setHeader("cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("pragma", "no-cache"); //HTTP 1.0
response.setHeader("Expires", "0"); // Proxy
if(session.getAttribute("uname") == null){
	response.sendRedirect("login.jsp");
	
}
%>
<h1>Welcome ${uname } </h1>
<a href="videos.jsp">Videos Here</a>

<form action="logout"> 
<input type="submit" value="logout"/>
</form>
</body>
</html>