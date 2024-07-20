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
    <title>Insert Title Here</title>
</head>
<body>
<center>
    <table>
        <h3>Training Enrollment List 2024</h3>

        <table border = "5">
        <tr>
            <th>Student Id</th>
            <th>Student Name</th>
            <th>Student Roll</th>
            <th>Student Department</th>
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
            if(conn != null)
            {
                String Query = "select * From register";
                pst = conn.prepareStatement(Query);
                rst = pst.executeQuery();
                while(rst.next())
                {
                    %>
                     <tr>
                        <td> <%=rst.getInt(1)%></td>
                        <td> <%=rst.getString(2)%> </td>
                        <td> <%=rst.getString(3)%> </td>
                        <td> <%=rst.getString(4)%> </td>
                        <td> <%=rst.getString(5)%> </td>
                        <td> <%=rst.getString(6)%> </td>
                    </tr>
                    <%
                }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        %>
        </tr>
    </table>
    <h3><a href = "index.jsp">Click</a>Here for New Registration.
			</h3>
    <h3><a href = "id.jsp">View</a>response</h3>
    <h3><a href = "update.jsp">Edit</a>response</h3>
</center>
</body>
</html>

