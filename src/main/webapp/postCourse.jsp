
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            .back{
                display: flex;
                justify-content: center;
                align-items: center;
                height: 1000px;
                background: rgba(137, 43, 226,0.5);
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .postContainer{
                width: 400px;
                border: 1px solid black;
                padding: 20px;
                background:white;
                border-radius: 12px;
            }
            .postContainer form label{
                font-size: 18px;
            }
            .postContainer form input{
                width: 100%;
                padding:4px;
                outline: none;
            }
            .postContainer form textarea{
                width: 100%;
                height:180px;
                font-size: 16px;
                resize: none;
                outline: none;
            }
            .postContainer form button{
                padding: 8px 20px;
                font-size: 18px;
                background-color: blueviolet;
                color: white;
                border: none;
                margin: 6px auto;
            }
        </style>
    </head>
    <body>
        <%--<%@include file="header.jsp" %>--%>
        <div class="back">
            <div class="postContainer">
                <form action="PostDetails" method="post">
                    <label for="title">Enter a title</label><br><br>
                    <input type="text" name="titlepost" id="title"/><br> <br>
                    <input type="file" value="chose a image" name="postImg"/><br><br>
                    <label for="descriptionArea">Describe your post </label><br><br>
                    <textarea id="descriptionArea" name="descriptionArea" rows="20"></textarea>
                    <button type="submit" id="submitpst">Post</button>
                </form>
            </div>
        </div>
    </body>
</html>
