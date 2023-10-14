<%-- 
    Document   : footre
    Created on : Oct 13, 2023, 9:01:00 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.css" rel="stylesheet" />
         <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet" />
         <link   rel="stylesheet" type="text/css" href="styles.css">
         <<link rel="stylesheet" href="assets/font-awesome.css"/>
         <<link rel="stylesheet" href="assets/style.css"/>
        
        <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.bundle.js"></script>
       <script src="assets/jquery-1.10.2.js"></script>
        <script src="scripts.js"></script> 
        <style>
    body{
        list-style: none;
        text-decoration: none;
    }
    .follow-me{
        margin-right: -9000px;
       width: 50%;
   
       margin-left: 50%;
       height:3%;
       padding: 5px;
       
    }
    .social-media{
       width: 3em;
       border-radius:12px;
       cursor: pointer;
       
    }
    .follow-me a{
        display: inline;
    }
    #p{
      margin-top: -22%;  
    }
</style>
    </head>
    <body>
      
        <footer class="footer" style="background-color:darkgray">
            <div class="col-md-6 footer-left">
            <h2>
                <a href="index.jsp"style="list-style:none;text-decoration:none;text-transform:capitalize;font-style:italic">shopping
            </h2>
            <p class="head" style="list-style:none;text-decoration:none;text-transform:capitalize;font-style:italic">
                Computer plays an important role in our daily life. Anything
                we want we can get only in one mouse click.</p>
        </div>
             <div class="sign-grds">


                <div class="col-md-6 sign-gd-two">
                    <h4 class="head"style="list-style:none;text-decoration:none;text-transform:capitalize;font-style:italic">Store Information</h4>
                    <ul>
                        <li><i class="glyphicon glyphicon-map-marker"
                               aria-hidden="true"></i>Address : <span>Tanzania.</span></li>
                        <li><i class="glyphicon glyphicon-envelope"
                               aria-hidden="true"></i>Email : <a href="mailto:info@example.com">greysonpeter37@gmail.com</a></li>
                        <li><i class="glyphicon glyphicon-earphone"
                               aria-hidden="true"></i>Phone : <a href="tel:+752943225">+0752943225</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
                <div class="follow-me">
            <a><img src="images/facebook.png" class="social-media" onmouseover="follow();"></a>
             <a><img src="images/google.png" class="social-media"></a>
              <a><img src="images/twitter.gif"class="social-media"></a>
              <a href="https://whatssapp.com/sizzoh.tz"><img src="images/whatsapp.png" class="social-media"></a>
               <a href="https://instagram.com/SizzohBoy"><img src="images/instagram.png" class="social-media"></a>
        </div>
            </footer>
       
    </body>
</html>
