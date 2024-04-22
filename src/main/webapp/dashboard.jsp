
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .dsb{
                margin-top: 70px
            }
        </style>
    </head>
    <%@include file="header.jsp" %>
    <body>

        
        
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <div class="dsb">
            <%
            String type = (String) session.getAttribute("type");

            if (type==null) {
            response.sendRedirect("login.jsp");
         
            } else if(type.equals("Teacher")){
            %>
            <%@include file="dashboardt.jsp" %>
            <%
              }else{
            %>

            <%@include file="dashboards.jsp" %>
            <%
               }
            %>
        </div>

        
    </body>
</html>
