
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="shortcut icon" href="img/pk.png" type="image/x-icon">
    <style>
        body{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            background-color: rgba(2, 19, 62, 0.659);
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .container{
            width: 350px;
            padding: 30px;
            background-color: white;
            border-radius: 12px;
        }
        .container h1{
            text-align: center;
            margin: 30px auto;
        }
        .container form{
            width: 100%;
        }
        .container form label{
            font-size: 18px;
            padding: 10px auto;
        }
        .container form input{
            width: 100%;
            padding: 8px;
            border: none;
            border-bottom: 1px solid blueviolet;
            margin: 10px auto;
            outline: none;
        }
        .container form button{
            background-color: blueviolet;
            border: none;
            border-radius: 30px;
            font-size: 18px;
            padding: 10px;
            width: 100%;
            display: block;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Here</h1>
        <c:if test="${not empty fail}">
            <p style="color: red;text-align: center;">${fail}</p>
            <c:remove var="fail"></c:remove>
        </c:if>
        <br>
        <form action="Login" method="post">
            <label for="email">Enter your email here</label><br>
            <input type="email" name="email" id="email"><br><br>
            <label for="password">Enter your password here</label><br>
            <input type="password" name="password"><br>
            <button type="submit">Login</button>
            <a href="register.jsp" style="color: blueviolet; text-decoration: none;margin: 10px auto;width: 100%;display: flex;justify-content: center">Register</a>
        </form>
    </div>
</body>
</html>
