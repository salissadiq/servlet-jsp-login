<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos page</title>
</head>
<body>
<%
response.setHeader("cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
response.setHeader("pragma", "no-cache"); //HTTP 1.0
response.setHeader("Expires", "0"); // Proxy
if(session.getAttribute("uname") == null){
	response.sendRedirect("login.jsp");
	
}
%>
<h1>Videos page</h1>
<iframe width="560" height="315" src="https://www.youtube.com/embed/4XTsAAHW_Tc?si=qNrpjHVV4RWzy-Ls" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</body>
</html>