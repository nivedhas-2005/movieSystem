<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
    }

    .login-container {
        background: rgba(0, 0, 0, 0.7);
        padding: 40px 60px;
        border-radius: 10px;
        width: 100%;
        max-width: 400px;
        text-align: center;
    }

    h3 {
        margin-bottom: 20px;
        font-size: 2em;
        color: #ffcc00;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 15px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #fff;
        background-color: rgba(255, 255, 255, 0.2);
        color: white;
        font-size: 1.1em;
    }

    input[type="submit"] {
        width: 100%;
        padding: 15px;
        background-color: #ff5722;
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 1.1em;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #ff8a4d;
    }

    a {
        font-size: 1.2em;
        color: #ffcc00;
        text-decoration: none;
    }

    a:hover {
        color: #ff5722;
    }

    .register-link {
        margin-top: 20px;
    }
</style>
</head>
<body>

<div class="login-container">
    <h3>Login</h3>
    <form action="/login" method="post">
        <input type="text" name="username" placeholder="Enter User Id" required/><br/>
        <input type="password" name="password" placeholder="Enter Password" required/><br/>
        <input type="submit" value="Submit"/>
    </form>
    <div class="register-link">
        <h2><a href="/register">Register for New User</a></h2>
    </div>
</div>

</body>
</html>
