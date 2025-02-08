<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Data</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    background-image: url('https://prints.alamy.com/p/780/abstract-painting-background-gentle-light-blue-33060294.jpg.webp'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
}

.container {
    width: 80%;
    max-width: 1000px;
    padding: 30px;
    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 15px;
    background-color: rgba(255, 255, 255, 0.9);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
    font-weight:600;
    color: #333;
}

table {
    width: 100%;
    border:0.5px solid #ddd;
    margin-top: 20px;
}

table th, table td {
    padding: 12px;
    text-align: left;
    border:0.5px solid #ddd;
   
}

table th {
    background-color: #007bff;
    color: white;
    font-weight: bold;
}

table tr:hover {
    background-color: #f1f1f1;
}

table td {
    color: #333;
}

/* Responsive Table */
@media (max-width: 768px) {
    table {
        display: block;
        overflow-x: auto;
        white-space: nowrap;
    }
}
</style>
</head>
<body>
<div class="container">
    <h2>User Data</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy", "root", "root");
                String sql = "select * from login";
                PreparedStatement pmst = conn.prepareStatement(sql);
                ResultSet rs = pmst.executeQuery();
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("password")%></td>
            </tr>
            <%
                }
            } 
            catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </tbody>
    </table>
</div>
</body>
</html>