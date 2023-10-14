<%-- 
    Document   : addTocart
    Created on : Nov 13, 2022, 10:28:27 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
    </head>
    <body>
        <style>
            body
            {
                background: url(images/vegetable.png);

            }

            .contactForm
            {
                padding: 75px 50px ;
                background: #4cae4c;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 30% ;
                max-height: 30%;
                margin-top: 50px ;
                margin-bottom: 50px;
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
                border: 1px solid #555 ;
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

                background: #0075b0;
            }
        </style>

    </head>
<body>
<center>
    <section id="login">
        <div class="container ">
            <div class="contactForm mx-auto">				

                <div class="Container-fluid">
                    <div class="text-center">

                    </div>

                    <form action="cart" method="post">

                        <div class="col-md-4">
                            <div class="inputBox mb-2">
                                <label for="id" class="mb-0" >product ID </label>
                                <input type="number" id="id" name="id"  required>
                            </div>
                            <div class="inputBox mb-2">
                                <label for="name" class="mb-0" >Product name </label>
                                <input type="text" id="name" name="name" required>
                            </div>


                            <div class="inputBox mb-2">
                                <label for="price" class="mb-0" > Price </label>
                                <input type="number" id="price" name="price" required>
                            </div>
                            <hr/>
                            <div class="inputBox mb-2">
                                <label for="category" class="mb-0" >category</label>
                                <input type="text" id="category" name="category" required>
                            </div>
                            <center>

                                <div class="inputBox mt-2">
                                    <input type="Submit" class="btn" value="SUBMIT" onclick="return {'are you sure you want to add this product'}">
                                </div>
                            </center>
                        </div>
                    </form>
                    </center>
                </div>
                <hr/>
            </div>
        </div>
        </div>

</center>                      
</body>      

</body>
</html>
