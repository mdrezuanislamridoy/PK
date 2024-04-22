<%@ page import="java.util.ArrayList"%>
<%@ page import="king.dao.pk.Post"%>
<%@ page import="java.sql.*"%>
<head>
<style>
.body {
	display: flex;
}

.leftDetails {
	width: 20%;
	background-color: white;
	border-right: 1px solid black;
	height: 100vh;
	margin: 10px;
}

.leftDetails ul li {
	list-style-type: none;
	margin: 20px 0;
}

.leftDetails button {
	background-color: white;
	border: none;
	border-bottom: 1px solid blueviolet;
	font-size: 18px;
}

.rightDetails {
	width: 80%;
	margin: 10px;
	background-color: aliceblue;
}

.rightDetails div h1 {
	background-color: black;
	padding: 20px;
	margin: 1px;
	color: white;
}

.body .rightDetails #wishlistD {
	display: none;
}

.body .rightDetails #cartD {
	display: none;
}

.body .rightDetails #messegesD {
	display: none;
}

.courses {
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

.courses .posts h1 {
	background: gray;
}
</style>
</head>
<body>
	<div class="body">
		<div class="leftDetails">
			<ul>
				<li><button id="my-Courses">my-Courses</button></li>
				<li><button id="messeges">messages</button></li>
			</ul>
		</div>
		<div class="rightDetails">
			<div class="my-Courses" id="my-CoursesD">
				<h1>My Courses</h1>
				<div class="courses">
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
			</div>

			<div class="messeges" id="messegesD">
				<h1>Messeges</h1>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#my-Courses").click(function() {
				$("#my-CoursesD").show();
				$("#messegesD").hide();

			});

			$("#messeges").click(function() {
				$("#my-CoursesD").hide();
				$("#messegesD").show();

			});
		})
	</script>
</body>