<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
final String url= "jdbc:mysql://localhost:3306/enrollement";
final String username="root";
final String password ="";
Connection conn;
PreparedStatement pst;
ResultSet rst;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url,username,password);
	if(conn!=null) 
	{
		int id = Integer.parseInt(request.getParameter("id"));
		String Query = "select * from register where id = ?";
		pst = conn.prepareStatement(Query);
		pst.setInt(1,id);
		rst = pst.executeQuery();
		if(rst.next()) 
		{
			%>
			<h3 style="text-align: center;border-bottom: 2px solid black; padding: 10px; ">ID FOUND</h3>
			<center>
            <table border ="10">
                <tr>
                    <td> Candidate name </td>
                    <td> <%= rst.getString(2) %></td>
                </tr>
                <tr>
                    <td> Candidate roll number </td>
                    <td> <%= rst.getString(3) %></td>
                </tr>
                <tr>
                    <td> Candidate department </td>
                    <td><%= rst.getString(4) %> </td>
                </tr>
                <tr>
                    <td> Candidate email address </td>
                    <td> <%= rst.getString(5) %></td>
                </tr>
                
                <tr>
                    <td> Candidate Course enrolled </td>
                    <td> <%= rst.getString(6) %></td>
                </tr>

			</table>
			<td><h3><a href = "index.jsp">Click</a>Here for New Registration.</h3></td>
			<%
			
			
		} 
		else 
		{
			%>
			<h3 style="text-align: center;">ID DOES NOT FOUND.</h3>
			<%
		}
	}
} catch(Exception e) {
	%>
	e.printStrackTrace();
	<%
}


%>
