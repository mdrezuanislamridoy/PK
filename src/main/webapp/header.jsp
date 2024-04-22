<%@page isELIgnored="false" %>
<%@page errorPage="Error.jsp" %>
<style>
    body {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background-color: rgba(2, 19, 62, 0.659);
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }
    header{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1111;
    }
    header nav{
        background-color: rgba(58, 58, 58, 0.294);
        display: flex;
        height: 100%;
        align-items: center;
    }
    header nav .logo{
        width: 16%;
    }
    header nav .logo img{
        width: 60px;
        display: block;
        margin: auto;
    }
    header nav .menu{
        width: 60%;
    }
    header nav .menu ul{
        display: flex;
        justify-content: space-around;
    }
    header nav .menu ul li {
        list-style: none;

    }
    header nav .menu ul li a{
        text-decoration: none;
        color: white;
        font-size: 16px;
    }
    
    header nav .menu ul li a:hover{
        color: rgb(225, 201, 231);
    }
    header nav .btn{
        width: 24%;
        display: flex;
        justify-content: space-around;
    }
    header nav .btn a{
        width: 45%;
        margin: 14px 0;
        background-color: blueviolet;
        font-size: 16px;
        color: white;
        border: 1px solid white;
        border-radius: 30px;
        display: flex;
        justify-content: center;
        align-items: center;
        text-decoration: none;
    }
</style>
<link rel="shortcut icon" href="img/pk.png" type="image/x-icon">
<body>
    <%String name = (String) session.getAttribute("name"); %>
    
    <header>
        <nav>
            <div class="logo">
                <img src="img/pk.png" alt="programming kingdom">
            </div>
            <div class="menu">
                <ul>
                    <li><a href="index.jsp" id="home">Home</a></li>
                        <%if(name!=null){ %>
                            <li><a href="dashboard.jsp">Dashboard</a></li>
                        <%}%>
                            
                    <li><a href="">Services</a></li>
                    <li><a href="cources.jsp">courses</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact Us</a></li>
                </ul>
            </div>
            <%
                if(name!=null){
                String[] sname = name.split(" ");
            %>
            <div class="btn">
                <a href="profile.jsp"><%=sname[0]%></a>
            </div>
            <%
               }else{
            %>

            <div class="btn">
                <a href="login.jsp">LogIn</a>
                <a href="register.jsp">SignUp</a>
            </div>
            <%
              }
            %>
        </nav>
    </header>
</body>