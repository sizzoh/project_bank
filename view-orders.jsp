<%-- 
    Document   : view-orders
    Created on : Nov 14, 2022, 1:41:27 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view order</title>
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


    </head>
    <body>
        <form action="viewOrders" method="post">
            <h1 style="color: #0075b0 ">After customers have been placed their orders</h1>
            <h1 style="color: #0075b0 ">Admin or  assistant can view customer orders at this page</h1>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="check orders"> 
        </div>
        </form>
    </body>
</html>
