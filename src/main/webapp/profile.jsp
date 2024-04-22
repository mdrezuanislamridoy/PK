
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="img/pk.png" type="image/x-icon">
        <style>
            
        </style>
    </head>
    <body style="padding-top: 60px">
        <%@include file="header.jsp" %>
        <%
        	String failedpost = (String) session.getAttribute("failedpost");
        
        	if(failedpost==null){
        		
        	}
        	else{
        		%><h2><%= failedpost %></h2><%
        	}
        %>
        
        
        <%
            String type = (String) session.getAttribute("type");

            if (type.equals("Student")) {
         %>
         <%@include file="StudentProfile.jsp" %>
         <%
            } else if(type.equals("Teacher")){
          %>
          <%@include file="TeacherProfile.jsp" %>
          <%
            }else{
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
