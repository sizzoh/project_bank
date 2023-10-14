<%-- 
    Document   : chats
    Created on : May 10, 2023, 10:13:55 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <script defer="scripts.js" src="scripts.js"></script> 
        <script>
            $("#email").hover(function () {
                alert("you hovered this text box");
            });
        </script>
        <style>
            body{
                position: fixed;
                padding: 0px;
                margin: 0px;
            }
            .container-chats{
                background: mistyrose;
                width: 800px;
                margin-left:  50%;
                height: auto;
                height: 500px;
                margin-top: 20%;

            }
            .container-chats p{
                float: right;
                resize: both;
                margin-top:5%;
                margin-right:10%;
            }
            #userchat{
                resize: horizontal;
                line-height: 10%;
                font-size: 10px;
                padding: 20px;
            }
            #adminchat{

                line-height:3%;
                font-size: 10px;
                padding: 20px;
                float: right;
                margin-top: 10%;
                margin-right: -12%;
            }
            .btn-success{
                margin-top: 17%;
                float: right;
                margin-left: 50%;
                margin-top: 0%;

            }
            .btn-info{
                margin-top: 30%;
            }
            .container-chats p,h1{
                margin-top: 0%;
                margin-right:80%;
                visibility: hidden;
            }
             h2{
                font-size: 20px;
            }
            .form-group{
                float: right;
            }
            .form-inline,.form-inline2{
               margin-top: 15%;
            }
            .form-inline1{
                float: right;
            }
        </style>
    </head>
    <body>
        <%
      HttpSession sesion = request.getSession();
      if(sesion ==null){
       response.sendRedirect("login.jsp");
         
          }
          else{
            
            
            %>
            <h2>Logged in as: <%out.print(sesion.getAttribute("email"));}%></h2>
        <div class="container-chats">
         
            <form class="infoForm">
                <label>You</label>
                <textarea name="text" id="userchat">
               
                </textarea>
                <button class="btn btn-default">send</button><br>
                <div class="form-group">
                <h3>${param.text}</h3>
                <label>admin</label>
                <textarea name="reply" id="userchat">
               
                </textarea>
                <button class="btn btn-default">send</button><br>
                </div>
                
                <div class="form-inline">
                   <h3>${param.reply}</h3> 
                   <label>You</label>
                <textarea name="res" id="userchat">
               
                </textarea>
                <button class="btn btn-default">send</button><br>
                </div>
                <div class="form-inline1">
                   <h3>${param.res}</h3> 
                   <label>admin</label>
                <textarea name="respo" id="userchat">
               
                </textarea>
                <button class="btn btn-default">send</button><br>
                </div>
                   <div class="form-inline2">
                   <h3>${param.respo}</h3> 
                   <label>You</label>
                <textarea name="text" id="userchat">
               
                </textarea>
                <button class="btn btn-default">send</button><br>
                </div>
                   <center>
                   <div class="form-horizontal">
                       <a href="dashTest.jsp" <button class="btn btn-default" >Leave It</button></a>
                   </div>
                   </center>
            </form>

        </div>
    </body>
</html>
