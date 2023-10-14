<%-- 
Document   : index
Created on : 24 Dec, 2020, 10:05:51 PM
Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer Register</title>
        <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        <link   rel="stylesheet" type="text/css" href="styles.css">
        <link rel="stylesheet" href="assets/font-awesome.css"/>
        <link rel="stylesheet" href="assets/style.css"/>

        <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.js"></script>
        <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
        <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.bundle.js"></script>
        <script src="assets/jquery-1.10.2.js"></script>
        <script src="scripts.js"></script> 
        <style>
            .container
            {
                padding: 75px 50px ;
                border: 1px solid gray;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 40%;
                max-height: 50%;
                margin-top: 50px ;
                margin-bottom: 50px;
                border-radius: 24px;
                opacity:70%;
            }
            .container h3
            {
                color: #111 ;
                font-size: 2em ;
                margin-bottom: 20px ;
                font-weight: 500 ;
            }
            .container .inputBox
            {
                position: relative ;
                width: 100% ;
                margin-bottom: 20px ;
            }
            .container .inputBox input,
            .container .inputBox textarea,
            .container .inputBox select,
            .container .inputBox option
            {
                width: 100% ;
                border: none;
                border-bottom:  1px solid black;
                padding: 10px ;
                color: #111 ;
                outline: none ;
                font-size: 16px ;
                font-weight: 300 ;
                resize: none ;
                border-radius: 12px;
                border-bottom: 1px #111 solid;
                margin: 10px;
            }
            .container .inputBox input[type="submit"]
            {
                font-size: 1em ;
                color: #fff ;
                background: black ;
                display: flex;
                text-transform: uppercase ;
                text-decoration: none ;
                letter-spacing: 2px ;
                transition: 0.5s ;
                max-width: 200px ;
                font-weight: 500;
                border: none ;
                cursor: pointer ;
                border-radius: 24px;
                text-align: center;
            }
            .container .inputBox input[type="submit"]:hover
            {

                background: #ff0157;
                position:relative;
            }
            .container .inputBox input[type="login"]
            {

                text-transform: uppercase ;
                text-decoration: none ;
                letter-spacing: 2px ;
                transition: 0.5s ;
                max-width: 200px ;
                font-weight: 500;
                border: none ;
                cursor: pointer ;
            }
            .container .inputBox input[type="login"]:hover
            {

                background: #d5d5d5;
                position:relative;
                color: #F70E62;
                width: 100%

            }
            .container .marquee bg-2 bg-primary{
                width: 5px;
                height: 10px;
                color: #2bab0d;
            }
            .img{
                width: 200px;
                border-radius: 6px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="text-center">
                <h6 style="text-transform: capitalize">sign up here</h6>
            </div>
            <form action="Register" method="post">
                <div class="inputBox mb-2">
                    <input type="email" id="email" class="form-control" name="email" placeholder="you@example.com" required>
                </div>
                <div class="inputBox mb-2">
                    <input type="password"  class="form-control" id="code" name="password" placeholder="Password" required>
                </div>


                <div class="inputBox mb-2">
                    <input type="number"  class="form-control" id="contact" name="contacts" placeholder="Contact No" required>
                </div>

                <div class="inputBox mb-2">
                    <input type="password"  class="form-control" id="confirm" name="confirm" placeholder="Re-Enter Password" required>
                </div>

                <div class="inputBox mb-2">
                    <input type="text"  class="form-control" id="name" name="name" placeholder="Full Name" required>
                </div>


                <div class="inputBox mb-2">
                    <input type="number"  class="form-control" id="age" name="age" placeholder="Age" required>

                </div>

                <div class="inputBox mb-2">
                    <select class="inputBox mb-2" id="gender"  class="form-control" name="gender" required>
                        <option value="">Choose..your gender.</option>                  
                        <option value="MALE">MALE</option>                  
                        <option value="FEMALE">FEMALE</option>                  
                    </select></div>
                <div class="inputBox mb-2">
                    <select class="inputBox mb-2"  class="form-control" id="country" name="country">
                        <option>select your country</option>
                        <option>Tanzania</option>
                        <option>Uganda</option>
                        <option>Kenya</option>
                        <option>Rwanda</option>
                        <option>Burundi</option>
                    </select>
                </div>

                <select  class="form-control" name="securityQuestion">
                    <option value="" >security question</option>
                    <option value="what was your first car?">what was your first car?</option>
                    <option value="what is the name of your first pet?">what is the name of your first pet?</option>
                    <option value="what elementary school did you attend?">what elementary school did you attend?</option>
                    <option value="what is the name of town you were born?">what is the name of town you were born?</option> 
                </select>
                <center>
                    <div class="inputBox mt-2">
                        <input type="Submit" class="btn" value="SUBMIT" >
                    </div>
                </center>
                <%
    String msg = request.getParameter("msg");
    if("valid".equals(msg))
    {
                %>

                <h1>account registered  successful!</h1>
                <%}%>
                <%
               if("invalid".equals(msg))
               {
                %>
                <h1>something went wrong try again!</h1>
                <% }%>
            </form>
             <center><div class="form-group">
                        <marquee class="bg-2 bg-primary" style="color: #000;border-radius:6px;text-transform: capitalize; line-height:22px;">
                            already have account?</marquee>
                        <a href="login.jsp"><button type="btn" class="btn btn-success" >login</button></a>
                    </div></center>
                  <script>
                document.addEventListener('DOMContentLoaded', () => {
                    const select = document.querySelector('#country');
                    fetch('htpp://restcountries.eu/rest/v2/all').then(res => {
                        return res.json();

                    }).then(data => {
                        let output = "";
                        data.forEach(country => {
                            output += '<option>${country.name}</option>';
                        }),
                                select.innerHTML = output;
                    }).catch(err => {
                        console.log(err);
                    })
                    ,
                });
            </script>
    </body>
</html>
