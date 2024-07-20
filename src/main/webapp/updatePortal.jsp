<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement" %>

<%
    final String Url = "jdbc:mysql://localhost:3306/enrollement";
    final String Username = "root";
    final String Password = "";

    Connection conn = null;
    PreparedStatement pst = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Username, Password);

        if (conn != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String roll = request.getParameter("roll");
            String dept = request.getParameter("dept");
            String email = request.getParameter("email");
            String course = request.getParameter("course");

            String UpdateQuery = "UPDATE register SET name = ?, roll = ?, dept = ?, email = ?, course = ? WHERE id = ?";

            pst = conn.prepareStatement(UpdateQuery);
            pst.setString(1, name);
            pst.setString(2, roll);
            pst.setString(3, dept);
            pst.setString(4, email);
            pst.setString(5, course);
            pst.setInt(6, id);

            int updateCount = pst.executeUpdate();

            if (updateCount > 0) {
                response.sendRedirect("display.jsp");
            } else {
                out.println("<h1>Update failed. Record not found.</h1>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h1>An error occurred: " + e.getMessage() + "</h1>");
    } finally {
        try {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Record</title>
</head>
<body>
<center>
</center>
</body>
</html>
