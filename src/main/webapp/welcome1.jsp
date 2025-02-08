<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    margin: 7%;
    background-image: url('https://prints.alamy.com/p/780/abstract-painting-background-gentle-light-blue-33060294.jpg.webp'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
}

.container {
    max-width: 100%;
    width: 50%;
    height: 470px;
    align-items: center;
    justify-content: center;
    border: 2px solid black;
    padding: 20px;
    border-radius: 10px;
    background-color: rgba(255, 255, 255, 0.8); 
}
a{
text-decoration: none;
color: none;
}
a:hover{
color: #fff;
}
.user {
font-weight:600;
    margin-bottom: 10px;
    border: 2px solid black;
    padding: 20px;
    border-radius: 10px;
    text-align: center; 
    transition: background-color 0.3s ease; 
}

.user:hover {
    background-color: rgb(81, 167, 236);
    color: #fff;
    font-weight: 400;
    font-size: 20px;
}
</style>
</head>
<body>
<div class="container">
    <div class="user"><a href="welcome.jsp">Create User</a></div>
    <div class="user"><a href="login.jsp">Login User</a></div>
    <div class="user"><a href="getall.jsp">Get All Users</a></div>
    <div class="user"><a href="update.jsp">Update User</a></div>
    <div class="user"><a href="delete.jsp">Delete User</a></div>
    <div class="user"><a href="getbyemail.jsp">Get User By Email</a></div>
</div>
</body>
</html>