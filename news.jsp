<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import= "java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dashboard</title>

        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js">


        <style>

            .navbar{
                text-decoration: none;
            }
            .navbar ul{
                text-decoration: none;
                padding: 20px;

            }
            .navbar ul li a{
                text-decoration: none;
                padding: inherit;
                float: right;
            }
            .nav-link{
                text-decoration: none;
                padding: auto;
                text-align-last: end;
                float: right;
            }
            .container{
                width: 100%;
                height: 150%;
                background: #04414d;
                padding: 5px;
            }
            .container li{
                float: right;
                text-decoration: none;
                list-style: none;
                padding: 10px;

            }
            .form input-box {
                float: start;
            }
            .container li a{
                color: white;
                float: right;
            }
            .container-fluid{
                background: dimgray;
                height: 600px;
                width: 50%;
                position: absolute;
                left: 20%;
                top: 20%;

            }
            .container-fluid input{
                padding: 1%;
                border-bottom: 1px solid black;
                margin-top: 20%

            }
            #select{
                padding: 1%;
            }
            .container-fluid h1{
                visibility: hidden;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#" style="text-decoration: none;color: #f9fafb">shop</a>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">cart</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">products</a>

                        </li>
                         <li class="nav-item">
                            <a class="nav-link disabled" href="chats.jsp" tabindex="-1" aria-disabled="true">chats</a>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="addproduct.jsp" tabindex="-1" aria-disabled="true">add</a></li>
                        <li class="nav-item"><a class="nav-bar-link disabled" href="logout.jsp">LOG OUT</a></li>


                    </ul>
                </div>
            </div>
        </nav>
    <center>
        <div class="container-fluid">
            <form class="form" onsubmit="validate()">

                <label for="input1">input1</label>
                <input type="text" name="input1" id="input1">
                <h1 id="h1">input must be numeric</h1>

                <label for="input2">input2</label>
                <input type="text" name="input2" id="input2">
                <h1 id="h2">input must be numeric</h1>
                <br>

                <select id="select">
                    <option value="+">addition</option>
                    <option value="-">substraction</option>
                    <option value="*">multiplication</option>
                    <option value="/">division</option>

                </select>
                <button type="submit" onclick="value();">submit</button>
            </form>

        </div>
    </center>
    <script>
            var input1 = document.getElementById('input1').value;
            var input2 = document.getElementById('input2').value;
        function validate(){
           
            if(input1 ==="" && input2===""){
                document.getElementsByTagName('h1').style.visibility="visible";
            }
            else if(isNaN(input1) && isNaN(input2)){
             document.getElementsByTagName('h1').style.visibility="visible";   
            }
        }
        function value(){
            document.getElementsById('h1').style.visibility="visible";
            document.getElementsById('h2').style.visibility="visible";
        }
    </script>
</body>
</html>
