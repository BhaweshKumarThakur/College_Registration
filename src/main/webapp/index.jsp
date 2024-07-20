<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<br>
<title style="color:red">Student Registration Form</title>


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 40%;
        margin: 2px auto;
        background: #F8F0E3;
        padding: -10px;
        box-shadow: 0px 0px 10px 0px #000;
        border-radius: 8px;
    }
    h2 {
        color: #333;
    }
    hr {
        border: 0;
        height: 1px;
        background: #333;
        margin-bottom: 20px;
    }
    form {
        width: 100%;
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
    }
    input[type="text"], input[type="email"], select {
        width: 100%;
        padding: 8px;
        margin: 5px 0 20px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button {
        width: 48%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0px 0px 10px 0px #000;
    }
    button[type="reset"] {
        background-color: #f44336;
    }
    button:hover {
        opacity: 0.8;
    }
    .button-container {
        text-align: center;
    }
    
</style>
</head>
<body>
    <div class="container">
        <center>
            <h2>Student Registration Form</h2>
            <hr>
            <form method="post" action="Rejister.jsp">
                <table>
                    <tr>
                        <td>Student Name</td>
                        <td><input type="text" placeholder="Enter Name" id="name" name="name" /></td>
                    </tr>
                    <tr>
                        <td>Roll Number</td>
                        
                        <td>
                        <input type="text" placeholder="Roll No" id="roll" name="roll" />
                        </td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td><input type="email" placeholder="Enter email" id="email" name="email" /></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td>
                            <select name="dept">
                                <option value="ECE" selected>Electronics And Communication Engineering</option>
                                <option value="CSE">Computer Science And Engineering</option>
                                <option value="IT">Information Technology</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Select Course</td>
                        <td>
                            <select name = "course">
                                <option value="JAVA" selected>JAVA</option>
                                <option value="PYTHON">PYTHON</option>
                                <option value="CPP">CPP</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <button type="submit">Submit</button>
                            <button type="reset">Reset</button>
                        </td>
                    </tr>
                </table>
                
            </form>
        </center>
    </div>
</body>
</html>