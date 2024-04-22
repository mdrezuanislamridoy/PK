
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="shortcut icon" href="img/pk.png" type="image/x-icon">
        <style>
            body{
                margin: 20px;
                padding: 0;
                box-sizing: border-box;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: rgba(2, 19, 62, 0.659);
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            }
            .container{
                width: 500px;
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
                padding: 4px auto;
            }
            .container form input{
                width: 100%;
                padding: 8px;
                border: none;
                border-bottom: 1px solid blueviolet;
                margin: 4px auto;
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
                margin-top: 20px;
            }
            .choice-log {
                display: flex;
                justify-content: flex-start;
                width: 40%;
                padding: 1px;
                border-bottom: none;
                margin:20px 1px;
                outline: none;
            }

            .choice-log input[type="radio"] {
                margin-right: 10px;
            }

            .choice-log label {
                margin-right: 20px;
            }
            #english_level option{
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>SignUp Here</h1>
             <c:if test="${not empty failed}">
                <p style="color: red;text-align: center;">${failed}</p>
                <c:remove var="failed"></c:remove>
            </c:if>
            <c:if test="${not empty success}">
                <p style="color: green;text-align: center;">${success}</p>
                <c:remove var="success"></c:remove>
            </c:if> 
            <br>
            <form action="Register" method="post">
                <label for="name">Enter your Full name here</label><br>
                <input type="name" name="name" id="name" required><br><br>
                <label for="email">Enter your email here</label><br>
                <input type="email" name="email" id="email" required><br><br>
                <label for="password">Enter your password here</label><br>
                <input type="password" name="password" id="password" required><br><br>
                <label for="phone">Enter your Phone No</label><br>
                <input type="text" name="phone" id="phone" required><br><br>  
                
                <br>
                <label for="">Select your Choice</label>
                <div class="choice-log">

                    <input type="radio" name="type" value="Student" id="stud" required><label required for="stud">Student</label> &nbsp; <input type="radio" name="type" value="Teacher" id="teac"><label for="teac">Teacher</label>
                </div>
                <button type="submit">Register</button>
                <a href="login.jsp" style="color: blueviolet; text-decoration: none;margin: 10px auto;width: 100%;display: flex;justify-content: center">Login</a>
            </form>
        </div>
    </body>
</html>
