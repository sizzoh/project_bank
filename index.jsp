<%-- 
   Document   : index
   Created on : Oct 5, 2022, 8:10:21 AM
   Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" 
              type="text/css"/>
        <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
        <script src="/assets/bootstrap/css/bootstrap.min.js"></script>
        <title>shop sales</title>
        <style>
            *
            {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }

            .menu-bar{
                background: rgb(0,100,0) ;
                text-align: center ;
                width:  1550px;
            }
            .menu-bar ul{
                display: inline-flex;
                list-style: none;
                color: #fff;
            }
            .menu-bar ul li
            {
                width: 120px;
                margin: 15px;
                padding: 15px;

            }
            .menu-bar ul li a
            {
                text-decoration: none;
                color: #fff;
            }
            .menu-bar ul li:hover
            {
                background: #2bab0d;
                border-radius: 3px;
            }
            .menu-bar fa{
                margin-right: 8px;
            }
            .content-wrapper marquee{
                margin-top: 10%;
            }
            .content-wrapper marquee h1,h2,h3,h4,h5{
                font-style: italic;
                text-transform: capitalize;
                color:black;
            }
            .container-xxl{
                overflow: hidden;
                width: 100%;
                height: 50%;
                background-position: center;
                background-size: cover;

            }
            .slider{
                display: flex;
                animation: background-image 30s infinite;
                height:90%;
                position: absolute;
               
            }
            .slider img{
                width:100%;
                height:auto;

            }
            @keyframes background-image {

                5%{
                    transform: translateX(0);
                }
                25%{
                    transform: translateX(-100%);
                }
                40%{
                    transform: translateX(-200%);
                }
                50%{
                    transform: translateX(-300%);
                }
                60%{
                    transform: translateX(-400%);
                }
                70%{
                    transform: translateX(-500%);
                }
                80%{
                    transform: translateX(-600%);
                }
                90%{
                    transform: translateX(-600%);
                }
                100%{
                    transform: translateX(0);
                }
            }





        </style> 
    </head>
    <body>

        <div class="menu-bar">
            <ul>
                <li class=""> <a href="index.jsp">Home</a><i class="fa fa-home"></i></li>
                <li><a href="contacts.jsp">contacts</a><i class="fa fa-phone"></i></li>
                <li><a href="Register.jsp">Register</a><i class="fa fa-registered"></i></li>
                <li><a href="login.jsp">Login</a><i class="fa fa-sign-in"></i></li>
                <li><a href="about.jsp"> About </a> <i class="fa fa-info"></i></li>
                <li><a href="help.jsp">Help</a></a><i class="fa fa-question-circle"></i></li>

            </ul>
        </div>
        <div class="content-wrapper">

            <div class="container-xxl">


                <div class="slider">
                    <img src="images/men soute.jpg" />
                    <img src="images/shop.jpg" />
                    <img src="images/bike.jpg" />
                    <img src="images/digital watch.jpg" />
                    <img src="images/female bag.jpg" />
                    <img src="images/trans6.jpg" />
                    <img src="images/female sout.png" />
                    <img src="images/men shoes.jpg" />
                    <img src="images/hardware collection.jpg" />
                    <img src="images/vegetables.png" />
                    <img src="images/motor.jpg" />
                    <img src="images/shopbg.jpg" />
                    <img src="images/male t-shirt.png" />
                    <img src="images/desktop.png" />
                    <img src="images/men watch.jpg" />
                </div>
            </div>
        </div>
    </body>
</html>
