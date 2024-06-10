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
if(session.getAttribute("uname") == null){
	response.sendRedirect("login.jsp");
	
}
%>
<h1>Welcome ${uname } </h1>
<a href="videos.jsp">Videos Here</a>

<form action="logout"> 
<input type="submit" />
</form>
</body>
</html>