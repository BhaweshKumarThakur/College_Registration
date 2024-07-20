<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.Connection" %>
    <%@page import = "java.sql.DriverManager" %>
    <%@page import = "java.sql.PreparedStatement" %>
    <%@page import = "java.sql.DriverManager" %>
    <%@page import = "java.sql.ResultSet" %>
    <% 
    final String Url = "jdbc:mysql://localhost:3306/enrollement";
    final String Username = "root";
    final String Password = "";

    Connection conn;
    PreparedStatement pst;
    ResultSet rst;
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	conn = DriverManager.getConnection(Url,Username,Password);
    	if(conn!=null){
    		int id = Integer.parseInt(request.getParameter("id"));
    		String Query = "select * from register where id =?";
    		pst = conn.prepareStatement(Query);
    		pst.setInt(1,id);
    		rst = pst.executeQuery();
    		if(rst.next()){
    			%>
    			<center>
    			<form action = "updatePortal.jsp" method ="post">
    			<h3>ID FOUND</h3>
    			<table border = "5">
    			<tr>
    			<td>Candidate Id</td>
    			<td><input type="number"  name = "id" value = "<%=rst.getInt(1)%>"/> </td>
    			</tr>
    			<tr>
    			<td>Candidate Name</td>
    			<td><input type="text"  name = "name" value = "<%=rst.getString(2)%>"/> </td>
    			</tr>
    			<tr>
    			<td>Candidate Roll Number</td>
    			<td><input type="text" name = "roll" value = "<%=rst.getString(3)%>"/></td>
    			</tr>
    			<tr>
    			<td>Candidate Email ID</td>
    			<td><input type="dept"  name = "dept" value = "<%=rst.getString(4)%>"/></td>
    			</tr>
    			<tr>
    			<td>Candidate Department</td>
    			<td><input type="text"  name = "email" value = "<%=rst.getString(5)%>"/></td>
    			</tr>
    			<tr>
    			<td>Candidate Course</td>
    			<td><input type="text"  name = "course" value = "<%=rst.getString(6)%>"/></td>
    			</tr>
<tr><td><button type ="submit">Update</button></td></tr>
    			</table>
    			</form>
    			
    			</center>
    			<%  
    		}else{
    			%>
    			<h3 style="color:red">ID DOES NOT EXISTS.</h3>
    			<%
    		}
    	}
    	
    }catch(Exception e){
    	e.printStackTrace();
    }


    %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>