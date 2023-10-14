<%-- 
    Document   : updateAccountInfo
    Created on : Apr 7, 2023, 11:33:03 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>account info</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
              ">
        <link hreflang="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js">
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONT AWESOME STYLE  -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLE  -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script src="assets/js/bootstrap.js"></script>
        <style>
            body{
                padding: 0;
                margin: 0;
                text-align: center;
                background: #2b542c;
            }
            .container
            {
                padding: 50px 20px ;
                background:gray;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 30% ;
                max-height: 60%;
                margin-top: 50px ;
                margin-bottom: 50px;
                line-height: 40px;
                border-radius: 22px;
            }
            .head{
                color: black;
                text-transform: capitalize;
                font-size: 2em;
            }
            #h1{
                text-transform: capitalize;
                color: black;
                font-style: italic;
                font-size: 2em;
            }
            .container .inputBox input,
            
            .container .inputBox option
            {
                width: 100% ;
                border-bottom: 1px solid black ;
                padding: 5px ;
                color: #111 ;
                outline: none ;
                font-size: 16px ;
                font-weight: 100;
                resize:none;
                border-bottom: 1px #111 solid;
                flex-direction: column;
                flex-flow: column;
                border-radius: 12px;
            }
            .container .inputBox select{
                max-width: 70%;
                line-height: 30px;
                border-radius: 12px;
            }
            .container .inputBox[name="contact"],
            .container .inputBox[name="repass"],
            .container .inputBox[name="marital"]{
                
            }
        </style>
    </head>
    <body>
        <div class="container">
            <%
            String msg = request.getParameter("msg");
            if("done".equals(msg)){
            %>
            <h1 id="h1">account information updated successifuly</h1>
               <%}%>
               
               <%
                String msge = request.getParameter("msg");
                
                if("oops".equals(msge)){
                %>
                <h1 id="h1">some thing went wrong try again!</h1>
                <%}
               %>
            <header class="head">update account information</header>
            <form action="update" method="post">
                <div class="inputBox mb-2">
                    <label for="password">Email ID: </label>
                    <input type="email" name="email" placeholder="enter your email" required="">
                </div>
                <div class="inputBox mb-2">
                    <label for="password">password: </label>
                    <input type="password" name="pass" placeholder="enter new password" required="">
                </div>
                <div class="inputBox mb-2">
                <label for="phone"> phone number: </label>
                <input type="number" name="contact" placeholder="enter new phone number" required="">
                </div>
                <div class="inputBox mb-2">
                 <label for="passConfirm"> confirm password: </label>
                 <input type="password" name="repass" placeholder="Re-enter new password" required="">
                </div>
                <div class="inputBox mb-2">
                <label for="marital" class="mb-0"> Marital Status</label>
                <select class="inputBox mb-2" id="marital" name="marital" required="">
                        <option>select</option>
                        <option>Single</option>
                        <option>married</option>
                        <option>prefer not to say</option>
                    </select>
                </div>
                <div class="inputBox mb-2">
                    <label for="securityQuestion">security Question: </label>
                    <select>
                        <option>select one</option>
                        <option value="what was your first car?">what was your first car?</option>
                        <option value="what is the name of your first pet?">what is the name of your first pet?</option>
                        <option value="what elementary school did you attend?">what elementary school did you attend?</option>
                        <option value="what is the name of town you were born?">what is the name of town you were born?</option> 

                        <option value="what event your are unable to forget in your life?">what event your are unable to forget in your life?</option>
                        <option value="what is the name of your city you live now?">what is the name of your city you live now?</option>
                        <option value="what is your hobby?">what is your hobby?</option>
                        <option value="why did you join this platform?">why did you join this platform?</option> 

                    </select><br>
                    <input type="text" name="sQuestion" placeholder="enter your answer" required="">
                </div>
                <div class="inputBox mb-2">
                    <label for="button" type="submit"></label>
                <button class="btn btn-primary" type="submit">submit</button>
                </div>
                <div class="inputBox mb-2">
                    <h2>Go to Login</h2> 
                    <a href="Customerlogin.jsp" style="text-decoration:none"><button type="btn" class="btn btn-default">Login</a></button>
                </div>
            </form>
        </div>
            
    </body>
</html>
