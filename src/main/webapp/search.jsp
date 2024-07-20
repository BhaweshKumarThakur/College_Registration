<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Training Enrolment List 2024</title>
</head>
<body>
<center>
    <h3>Training Enrolment List 2024</h3>

    <form method="post">
        <label for="studentId">Enter Student ID:</label>
        <input type="text" id="name" name="name">
        <input type="submit" value="Search">
    </form>

    <table border="5">
        <tr>
            <th>Student Id</th>
            <th>Student Roll</th>
            <th>Student Dept</th>
            <th>Student Email</th>
            <th>Student Course</th>
        </tr>

        <%
        final String Url = "jdbc:mysql://localhost:3306/enrollement";
        final String Username = "root";
        final String Password = "";

        Connection conn;
        PreparedStatement pst;
        ResultSet rst;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(Url, Username, Password);

            String id = request.getParameter("id");
           
                String Query = "select * from register where student_id = ?";
                pst = conn.prepareStatement(Query);
                pst.setString(1, id);
                rst = pst.executeQuery();
                while (rst.next())
                {
                    %>
                    <tr>
                        <td> <%=rst.getInt(1)%> </td>
                        <td> <%=rst.getString(2)%> </td>
                        <td> <%=rst.getString(3)%> </td>
                        <td> <%=rst.getString(4)%> </td>
                        <td> <%=rst.getString(5)%> </td>
                    </tr>
                    <%
                }
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        %>
    </table>
    <h3><a href="index.jsp">Click</a> Here for New Registration.</h3>
</center>
</body>
</html>