<%-- 
    Document   : report
    Created on : Oct 22, 2022, 1:49:13 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sales report</title>
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
            body {
                text-orientation: sideways;
                text-height: auto;
                box-sizing: content-box; 
                content: var; 
                align-content: center;
                
            }
             
               .container-fluid{
                   background-color:gray;
                   
               }
            .container  h1{
                size: portrait;
                text-transform:capitalize;
                color: #000; 
            }
            .container  h2{
                size: auto;
                text-transform: capitalize;
                color: #000;  
            }
            .container inputBox [type="submit"]{
                color: #F70E62;
                 
            }
        </style>
        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js">
    </head>
    <body>
    <center>
        <div class="container">
            <div class="container-fluid bg-2 txt-center">
                <marquee style="color: #843534">DAILY REPORT</marquee>
                <h1>this is the report page</h1>
                <h2>at this page a shop owner can input his or her daily data</h2>
                <h2>and then the application will generate a summerized report </h2>
                <form action="report" method="post">
                        <div class="form-group">
                            <label for="purchases">purchases</label>
                            <input type="number" name="purchase" class="inputBox" required="">
                        </div>
                        <br><br>
                        
                        <div class="form-group">
                            <label for="sales">sales</label>
                            <input type="number" name="sales" class="inputBox" required="" style="size: B5">
                        </div>
                        <br><br>
                        
                        <div class="form-group">
                            <label for="profit">profit</label>
                            <input type="number" name="profit" class="inputBox" required="">
                        </div>
                        <br><br><!-- comment -->
                        
                        <div class="form-group">
                            <label for="debtors">debtors</label>
                            <input type="number" name="debtors" class="inputBox" required="">
                        </div>
                        <br><br>
                        
                        <div class="form-group">
                            <label for="btn">send</label>
                            <input type="submit" class=" btn btn-info" name="submit">
                        </div>
                    </form>
                </div>
            </div>
    </body>
    </center>
</html>
