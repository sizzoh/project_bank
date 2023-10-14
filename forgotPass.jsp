<%@page import= "customer.ConnectionProvider" %>
<%@page import= "java.sql.*" %>

<html>
</head>
<body>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer login</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashoard</title>

       

    </head>
    <body>
        <style>
            body
            {
                background: url(images/trans2.jpg);

            }

            .contactForm
            {
                padding: 75px 50px ;
                background:chocolate;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 30% ;
                max-height: 80%;
                margin-top: 50px ;
                margin-bottom: 50px;
                border-radius:28px;
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
                padding: 5px;
                border-radius: 12px;
            }
            .contactForm .inputBox input,
            .contactForm .inputBox textarea,
            .contactForm .inputBox select,
            .contactForm .inputBox option
            {
                width: 100% ;
                border: 1px solid #555 ;
                padding: 10px ;
                color: #111 ;
                outline: none ;
                font-size: 16px ;
                font-weight: 300 ;
                resize: none ;
                border-radius: 12px;
            }
            .contactForm .inputBox input[type="submit"]
            {
                font-size: 1em ;
                color: #ff0157;
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
            .contactForm .inputBox input[type="login"]
            {
             cursor: pointer;
             color: white;
             width: 200px;
             border-radius: 6px;
            }
            
           .contactForm .inputBox a input[type="login"]:hover{
               background: #00cccc; 
            }
            .ans{
                line-height:40px;
            }
        </style>

    </head>
<body>

<center>
    <section id="login">
        <div class="container ">
            <div class="contactForm mx-auto">				

                <div class="Container-fluid">
                    <%
                        String msg = request.getParameter("msg");
                        if("done".equals(msg))
                        {
                        %>

                        <h1>password changed successful!</h1>
                        <%
                    }
                        %>
                        <%
                        if("invalid".equals(msg))
                        {
                        %>
                        <h1>something went wrong try again!</h1>
                        <% }%>
                    <div class="text-center">

                        
                        <form action="forget" method="post">
                        
                            <div class="col-md-4">
                                <div class="inputBox mb-2">
                                    <label for="email" class="mb-0" >Email ID </label>
                                    <input type="email" id="email" name="email" placeholder="you@example.com" required>
                                </div> 
                                   <div class="inputBox mb-2">
                                    <label for="contact">contacts </label>
                         <input type="number" name="contact" placeholder="enter your contacts " required>
                                </div> 
                                <div class="inputBox mb-2">

                                    <label for="Newpassword" class="mb-0" >new password</label>
                                    <input type="password" id="code" name="Newpassword" placeholder="Password" required>
                                </div>


                                <div class="inputBox mb-2">
                                    <label for="confirm" class="mb-0" >Confirm Password</label>
                                    <input type="password" id="confirm" name="confirm" placeholder="Re-Enter Password" required>
                                </div>
                                <div class="inputBox mb-2">
                                <label for="securityQuestion">security question:</label>
                                <select name="securityQuestion" class="ans">
                                    <option value="what was your first car?">what was your first car?</option>
                                    <option value="what is the name of your first pet?">what is the name of your first pet?</option>
                                    <option value="what elementary school did you attend?">what elementary school did you attend?</option>
                                    <option value="what is the name of town you were born?">what is the name of town you were born?</option>
                                    
                                </select>
                                </div>
                                <div class="iputBox mb-2">
                                <label for="ans"></label>
                                <input type="text" class="ans" name="answer" style="border-radius:12px;width:50%" placeholder="enter your answer" required>
                                   
                           <input type="submit" value="save" onclick="return ${param.msg}" style="color: #111;
                         cursor:pointer;line-height:2em;border-radius: 3px;" >
                                </div>
                           <div class="inputBox mb-2">
                               <a href="Customerlogin.jsp"> <input type="login" id="btn" class="btn" value="NOW LOGIN"
                            style="width: 120px; height: 30px; background-color: #111;"></a>
                                 
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>

        </div>
    </section>
</center>

</body>
</html>

