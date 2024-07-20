<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%
final String Url="jdbc:mysql://localhost:3306/enrollement";
final String username="root";
final String password ="";
Connection conn;
PreparedStatement pst;
try {
    Class.forName("com.mysql.cj.jdbc.Driver"); //registering
    conn= DriverManager.getConnection(Url,username,password);//Loading
    if(conn!=null) {
       String name = request.getParameter("name");
       String roll = request.getParameter("roll");
       String dept = request.getParameter("dept");
       String email = request.getParameter("email");
       String course = request.getParameter("course");
       String Query = "insert into Register(name,roll,dept,email,course) values(?,?,?,?,?)";
       pst = conn.prepareStatement(Query);
       pst.setString(1,name);
       pst.setString(2,roll);
       pst.setString(3,dept);
       pst.setString(4,email);
       pst.setString(5,course);
       pst.executeUpdate();
       %>
       <h1>Your data has been submitted.</h1>
       <a href="display.jsp">DISPLAY</a>
       <%
       
    }
} catch(Exception e) {
	%>
	<h1>College server not work!!</h1>
	
	<%
	
}

%>