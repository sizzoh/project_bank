<%-- 
    Document   : cancelOrderAction
    Created on : Apr 2, 2023, 2:12:22 AM
    Author     : window 10 pro
--%>
<%@page import= "java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                text-align: center;
                align-content: center;
            }
            .form{
                text-align: center;
                
            }
            .form input{
                border-bottom: 1px #000 solid;
            }
            .form-control{
                width: 300px;
                height: 200px;
                background-color: gray;
                padding: 10px;
                border: 1px #000 solid;
            }
            .para{
                font-size: 2em;
                color: #000;
                font-family: sans-serif;
            }
        </style>
    </head>
    <body>
        <br>
        <br><!-- comment -->
        <br>
        <br>
    <center>
        <div class="form-control">
            <%
            String msg = request.getParameter("msg");
            if("done".equals(msg)){
                   
            %>
            <h1>order  cancelled successfully</h1>
            <%response.sendRedirect("orderAction.jsp");}
             %>
             <%
          
            if("oops".equals(msg)){
                   
            %>
            <h1>ooops try again! </h1>
            <%}
             %>
             <br>
        <form action="cancel" method="get" class='form-inline'>
            <p class="para">confirm order cancel </p>
        <input type="number" name="oid" placeholder=" enter id">
        <div class="form-group">
            <button type="submit" class="btn btn-check">cancel</button> 
        </div>
        </form>
        </div>
    </center>
    </body>
</html>
