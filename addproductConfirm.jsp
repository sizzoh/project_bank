<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add confirm</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
              integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
              crossorigin="anonymous">

        <style>
            body
            {
                background:teal;
                opacity: 0.7;
            }

            .contactForm
            {
                padding: 75px 50px ;
                background:white;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 50% ;
                max-height: 100%;
                margin-top: 50px ;
                margin-bottom: 50px;
                height: 100%;
               
            }
            .contactForm h1
            {
                color: #111 ;
                font-size: 2em ;
                margin-bottom: 20px ;
                font-weight: 500 ;
            }
            .contactForm .inputBox
            {
                position: relative ;
                width: 250% ;
                margin-bottom: 20px ;
            }
            .contactForm .inputBox input,
            .contactForm .inputBox textarea,
            .contactForm .inputBox select,
            .contactForm .inputBox option
            {
                width: 50% ;
                border: 1px solid #555 ;
                padding: 10px ;
                color: #111 ;
                outline: none ;
                font-size: 16px ;
                font-weight: 300 ;
                resize: none;
                position: relative;
            }
            .contactForm .inputBox input[type="submit"]
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
                cursor: pointer;
                position: relative;

            }
            .contactForm .inputBox input[type="submit"]:hover
            {
                background: #ff0157;
            }
            .contactForm .inputBox input[type="password"]
            {
                width:200px;
                float: inherit;
            }
            .btn,#code,.h1{
                left:-30%;
            }
        </style>

    </head>
    <body>
    <center>
        <section id="Reegistration">
            <div class="container ">

                <div class="contactForm mx-auto">				

                    <div class="Container-fluid">
                        <div class="text-center">
                            <h2 style="color:gray">confirm to add product</h2>    
                        </div>
                        <form action="add-confirm" method="post">
                            <%
            String msg = request.getParameter("msg");
            if("valid".equals(msg))
            {
                            %>

                            <h1>add product!</h1>
                            <%}%>
                            <%
                           if("invalid".equals(msg))
                           {
                            %>
                            <h1 style="color: #ff0157; text-transform: fullwidth">
                                Failed to add product you must be admin or have admin consent</h1>
                                <% }%>

                            <div class="row">

                                <div class="col-md-4">
                                  <h1 class="h1">Enter password</h1>
                                    <div class="inputBox mb-2">
                                              
                                <input type="password" id="code" name="upass" placeholder="Password" required>
                                    </div>
                                </div>
                                <div class="inputBox mt-2">
                                    <input type="Submit" class="btn" value="SUBMIT" onclick="return ${param.msg}" >
                                </div>
                            </div>

                    </div>

                    </form>
                </div>
            </div>
            </
        </section>
    </center>
</body>
</html>
