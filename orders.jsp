<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer login</title>
    </head>
    <body>
        <style>
            body
            {
                background: url(images/vegetables.png);

            }

            .contactForm
            {
                padding: 75px 50px ;
                background:gray;
                box-shadow: 0 15px 50px rgba(0,0,0,0.5) ;
                max-width: 40% ;
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
                <marquee style="color: #F70E62" >PRESS YOUR ORDER HERE</marquee>
                <div class="Container-fluid">
                    <div class="text-center">

                    </div>

                    <form action="Order" method="post">

                        <div class="col-md-4">
                            <div class="inputBox mb-2">
                                <label for="id" class="mb-0" >order ID </label>
                                <input type="number" id="id" name="id"  required>
                            </div>
                            <div class="inputBox mb-2">
                                <label for="name" class="mb-0" >Product name </label>
                                <input type="text" id="name" name="pname" required>
                            </div>


                            <div class="inputBox mb-2">
                                <label for="price" class="mb-0" > Date </label>
                                <input type="date" id="date" name="date" required>
                            </div>
                            <hr/>
                            <div class="inputBox mb-2">
                                <label for="category" class="mb-0" >category</label>
                                <input type="text" id="category" name="category" required>
                            </div>
                            <div class="inputBox mb-2">
                                <label for="comment">comment</label>
                            <textarea type="text" name="comment" class="textarea" placeholder="your comment"></textarea>
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
