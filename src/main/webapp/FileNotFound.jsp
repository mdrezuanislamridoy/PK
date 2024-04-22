

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Not found</title>
        <link rel="shortcut icon" href="images/cross.png" type="image/x-icon">
        <style>
            body{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 600px;
                background-color: rgb(136, 154, 170);
            }
            .container{
                width: 340px;
                height: 400px;
                padding: 20px;
                border-radius: 12px;
                display: flex;
                flex-direction: column;
                text-align: center;
                background-color: rgb(240, 253, 255);
                box-shadow: 8px 8px 15px rgba(0, 0, 0, 0.324), -8px -8px 15px rgba(255, 255, 255, 0.25);
            }
            .container img{
                width: 140px;
                margin: auto;
                
            }
            .container a{
                width: 100%;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>404.</h1>
            <h1>Page Not Found.</h1>
            <img src="img/cross.png" alt="">
            <a href="http://localhost:8080/Social-Media/">GO to home</a>
        </div>
    </body>
</html>
