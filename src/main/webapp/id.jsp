<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<center>
<h1>Check student details</h1>
<hr>
<form action ="fetch.jsp" method="get">
<table border ="5">
<tr>
<th>Enter id number</tr>
</tr>
<tr>
<td><input type="number" name ="id" required/></td>
</tr>
<tr>
<td><button type ="Submit">Fetch</button></td>
</tr>
</table>
</form>
 
</center>
</body>
</html>