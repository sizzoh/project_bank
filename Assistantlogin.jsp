<%-- 
    Document   : Customerlogin
    Created on : Oct 5, 2022, 9:32:44 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> assistant login</title>
    </head>

    <style>
        body
        {
            background: url(images/assist.jpg);

        }

        .contactForm
        {
            padding: 75px 50px ;
            background:#46b8da;
            box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
            max-width: 50% ;
            max-height: 50%;
            margin-top: 50px ;
            margin-bottom: 50px;
            border-radius: 24px;
            opacity:70%;
        }
        .contactForm h3
        {
            color: #111 ;
            font-size: 2em ;
            margin-bottom: 20px ;
            font-weight: 500 ;
        }
        .contactForm .inputBox
        {
            position: relative ;
            width: 50% ;
            margin-bottom: 20px ;
        }
        .contactForm .inputBox input,
        .contactForm .inputBox textarea,
        .contactForm .inputBox select,
        .contactForm .inputBox option
        {
            width: 50% ;
            border:none;
            border-bottom: 1px #111 solid;
            padding: 10px ;
            color: #111 ;
            outline: none ;
            font-size: 16px ;
            font-weight: 300 ;
            resize: none ;
        }
        .contactForm .inputBox input[type="submit"]
        {
            font-size: 1em ;
            color: #fff ;
            background: black ;
            display: inline-block ;
            text-transform: uppercase ;
            text-decoration: none ;
            letter-spacing: 2px ;
            transition: 0.5s ;
            max-width: 200px ;
            font-weight: 500 ;
            border: none ;
            cursor: pointer ;
        }
        .contactForm .inputBox input[type="submit"]:hover
        {

            background: #ff0157;
        }
    </style>

    <body>
    <center>
        <section id="login">

            <div class="contactForm mx-auto">				

                <div class="Container-fluid">
                    <div class="text-center">
                        <%
                   String msg = request.getParameter("msg");
                   if("valid".equals(msg))
                   {
                        %>

                        <h1>login  successful!</h1>
                        <%}%>
                        <%
                       if("invalid".equals(msg))
                       {
                        %>
                        <h1 style="color:#c9302c">Incorrect email or password!</h1>
                        <% }%>

                    </div>
                    <form action="assistant" method="post">
                        <hr/>
                        <h5>LOGIN DETAILS</h5>
                        <!--------Login Details------>


                        <div class="col-md-4">
                            <div class="inputBox mb-2">
                                <label for="email" class="mb-0" >Email ID </label>
                                <input type="email" id="email" name="email" placeholder="you@example.com" required>
                            </div>
                            <div class="inputBox mb-2">
                                <label for="password" class="mb-0" >Password </label>
                                <input type="password" id="code" name="upass" placeholder="Password" required>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term">
                                <label for="remember-me" class="label-agree-term"><span>Remember me</span></label>
                            </div>

                            <hr/>
                            <center>

                                <div class="inputBox mt-2">
                                    <input type="Submit" class="btn" value="SUBMIT" onclick="return ${param.msg}" >


                                </div>
                            </center>
                            <hr/>
                            </form>          
                            </center>                      
                        </div>
                </div>
            </div>
            </body>
            </html>
