<%@ page import="java.util.ArrayList"%>
<%@ page import="king.dao.pk.Post"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        	
        	.cources {
        		margin-top:100px;
				display: grid;
				grid-template-columns: 32% 32% 32%;
				justify-content: space-around;
			}
			
			.posts {
				margin: 12px;
				padding: 12px; box-shadow : 3px 3px 5px black;
				background: white;
				color: black;
				box-shadow: 3px 3px 5px black;
			}
			
			.cources .posts h1 {
				background: lightgray;
				text-align:center;
			}
			.cources .posts button{
				background : blue;
				color:white;
				padding : 8px 12px;
				font-size:16px;
				border:none;
				width:100%;
				border-radius: 12px; 
			}
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="cources">
        	<%
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pk", "root", "Ridoy781@#$");
						PreparedStatement ps = con.prepareStatement("SELECT * FROM postdesc");
						ResultSet rs = ps.executeQuery();
						ArrayList<String> titles = new ArrayList<>();
						ArrayList<String> descriptions = new ArrayList<>();
						while (rs.next()) {
							String title = rs.getString("title");
							String description = rs.getString("description");
							titles.add(title);
							descriptions.add(description);
						}
						con.close(); // Close the connection

						if (!titles.isEmpty() && !descriptions.isEmpty()) {
							for (int i = 0; i < titles.size(); i++) {
					%>
					<div class="posts">
						<h1>
							<%=titles.get(i)%></h1>
						<p>
							<%=descriptions.get(i)%>
						</p>
						<button>buy now</button>
					</div>
					<%
					}
					} else {
					%>
					<p>No courses available.</p>
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
        </div>
    </body>
</html>
