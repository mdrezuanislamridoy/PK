<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page isELIgnored="false"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <style>
            body {}

            header nav .menu ul li a#home {
                color: rgb(225, 201, 231);
            }

            .top-cover {
                height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
                color: white;
                background-image: linear-gradient(rgba(0, 0, 0, 0.691), rgba(0, 0, 0, 0.696));
                margin: auto;
                z-index: 222;
                background-position: center;
                background-size: cover;
                background-attachment: fixed;
                background-repeat: no-repeat;
            }

            .top-cover h1 {
                margin: 1px;
                font-size: 5rem;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            }

            .top-cover button {
                font-size: 18px;
                font-weight: 600;
                padding: 10px 60px;
                background-color: blueviolet;
                color: white;
                border: 1px solid white;
                border-radius: 30px;
                margin-top: 20px;
            }

            .top-cover h3 {
                margin: 1px;
                font-weight: 500;
            }

            .bg-vid {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100vh;
                z-index: -1;
            }

            .companies {
                display: flex;
                justify-content: space-around;
                height: 120px;
                align-items: center;
                width: 80%;
                margin: auto;
            }

            .companies .logos {
                width: 15%;
                height: 65px;
                background-color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 12px;
            }

            .companies .logos img {
                width: 70%;
                height: 50px;
                padding: 8px;
            }

            .about {
                display: flex;
                background-color: rgba(27, 27, 27, 0.904);
                height: 550px;
                padding: 30px;
            }

            .about .left {
                width: 60%;
                display: flex;
                justify-content: center;
            }

            .about .left img {
                width: 480px;
            }

            .about .right {
                width: 40%;
                color: rgb(255, 255, 255);
                padding: 5% 10%;

            }

            .about .right button {
                padding: 8px 12px;
                background-color: blueviolet;
                color: white;
                border: 1px solid white;
                border-radius: 12px;
            }

            .about .right p {
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                font-weight: 400;
            }

            .services {
                display: grid;
                grid-template-columns: 32% 32% 32%;
                justify-content: space-around;
                margin: 20px;
            }

            .services .box {
                margin: 20px 10px;
                padding: 12px;
                background-color: white;
                color: blueviolet;
                border: 1px solid blueviolet;
                border-radius: 8px;
            }

            .services .box p {
                font-size: 16px;
                color: black;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-weight: 550;
            }

            .services img {
                width: 98%;
                display: block;
                margin: auto;
                height: 250px;
            }

            .services .box button {
                padding: 8px 12px;
                background-color: blueviolet;
                color: white;
                border: 1px solid white;
                border-radius: 12px;
            }

            hr {
                border: 0.2px solid block;
            }

            .describe {
                height: 60vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
                color: rgb(168, 93, 238);
                background-image: url("img/white-bg.jpg");
                opacity: 0.8;
                margin: auto;
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
                margin: 20px;
            }

            .describe h1 {
                margin: 1px;
                font-size: 4rem;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            }

            .describe button {
                font-size: 18px;
                font-weight: 600;
                padding: 10px 60px;
                background-color: rgb(255, 255, 255);
                color: blueviolet;
                border: 1px solid blueviolet;
                border-radius: 30px;
                margin-top: 20px;
            }

            .top-cover h3 {
                margin: 1px;
                font-weight: 500;
            }



            @media (max-width:828px) {
                .about .left {
                    display: none;
                }

                .about {

                    max-height: 350px;
                }

                .about .right {
                    width: 100%;
                    text-align: center;
                }

                .services {
                    display: grid;
                    grid-template-columns: 50% 50%;
                    justify-content: space-around;
                }
            }

            @media (max-width:668px) {

                .about {

                    max-height: 350px;
                }

                .about .right p {
                    font-size: 14px;
                }

                .services {
                    grid-template-columns: 100%;
                    justify-content: space-around;
                    text-align: center;
                }

                .companies {
                    display: none;
                }
            }
        </style>
    </head>
    <%@include file="header.jsp" %>

        <body>
            <div class="bg-vid">
                <video src="video/bg.mp4" autoplay muted loop></video>
            </div>
            <div class="top-cover">
                <h3>welcome to</h3>
                <h1>Programming Kingdom</h1>
                <p>We're on a mission to provide personalized learning and <br> empower individuals to kick-start their
                    careers. </p>
                <button>Explore</button>
            </div>
            <br>
            <hr>
            <h1 style="text-align: center; color: white; margin: 1px;">Worked With</h1>
            <hr style="width: 15%; border: 1px solid white; display: block; margin: auto;">
            <br>
            <div class="companies">
                <div class="logos"><img src="img/google.webp" alt="" id="google"></div>
                <div class="logos"><img src="img/huawei.png" alt="" id="huawei"></div>
                <div class="logos"><img src="img/meta.png" alt="" id="meta"></div>
                <div class="logos"><img src="img/spotify.png" alt="" id="spotify"></div>
                <div class="logos"><img src="img/youtube.png" alt="" id="youtube"></div>
            </div>
            <br>
            <hr><br>
            <div class="about">
                <div class="left">
                    <img src="img/about.png" alt="">
                </div>
                <div class="right">
                    <h1>About PK</h1>
                    <hr style="width: 30%; display: block; margin-left: 2px; border: 2px solid white;">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut placeat rem pariatur? In officia
                        maxime iste praesentium nam nihil atque natus deserunt, blanditiis, unde veritatis asperiores,
                        quidem quasi quisquam quae cumque similique eaque alias eligendi numquam. Ipsa laborum,
                        doloremque consequuntur saepe eos eius ab! Ducimus officia vero alias quam quae?</p>
                    <button>Load More</button>
                </div>

            </div>

            <br>
            <hr><br>
            <h1 style="text-align: center; color: white; font-size: 48px; margin: 1px;">Services</h1>
            <hr style="width: 15%; border: 2px solid white; display: block; margin: auto;">
            <br>
            <div class="services">

                <div class="box">
                    <h2>Web Design</h2>
                    <img src="img/webDesign.png" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
                <div class="box">
                    <h2>Java Backend</h2>
                    <img src="img/javaBack.webp" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
                <div class="box">
                    <h2>UI/UX Design</h2>
                    <img src="img/ui-ux.png" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
                <div class="box">
                    <h2>Template Design</h2>
                    <img src="img/templateDesign.jpg" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
                <div class="box">
                    <h2>Testing</h2>
                    <img src="img/testing.jpg" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
                <div class="box">
                    <h2>Debugging</h2>
                    <img src="img/debugging.jpg" alt="">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, nulla?</p>
                    <button>Learn more</button>
                </div>
            </div>

            <br><br>
            <div class="describe">
                <h3>Lorem, ipsum dolor.</h3>
                <h1>Lorem, ipsum dolor.</h1>
                <p>We're on a mission to provide personalized learning and <br> empower individuals to kick-start their
                    careers. </p>
                <button>Explore</button>
            </div>
            <br>
            <%@include file="contact.jsp" %>
                <br><br>
                <%@include file="footer.jsp" %>
        </body>

    </html>