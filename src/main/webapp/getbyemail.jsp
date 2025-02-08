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
    min-height: 100vh;
    margin: 0;
    background-image: url('https://prints.alamy.com/p/780/abstract-painting-background-gentle-light-blue-33060294.jpg.webp'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
}

.container {
    width: 400px;
    padding: 30px;
    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 15px;
    background-color: rgba(255, 255, 255, 0.9);
    backdrop-filter: blur(10px);
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
}

.container h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
}

.input{
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 16px;
    outline: none;
    transition: border-color 0.3s ease;
}

.input:focus{
    border-color: #007bff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
}

.button{
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<form action="getbyemail" method="get"><div class="container">
<h2>Get User By Email</h2>
<input class="input"type="email" name="email" placeholder="enter email"><br>
<button class="button type="submit">submit</button></div>
</form>
</body>
</html>