<%-- 
    Document   : addOder
    Created on : Nov 8, 2022, 12:32:15 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order</title>
    </head>
    <body>
    <center>
        
            <div class="container ">
                <div class="orderForm mx-auto">				

                 <div class="Container-fluid">
            <div class="row" alight="right">
                <form action="Order" method="post" class="form-control">
                    <div class="form-group">
                        <label for="id">product id</label>
                        <input type="number" class="inputBox" name="id" required="">
                    </div>
                    <div class="form-group">
                        <label for="pname">product name</label>
                        <input type="text" class="inputBox" name="pname" required="">
                    </div>
                    <div class="form-group">
                        <label for="price">product price</label>
                        <input type="number" class="inputBox" name="price" required="">
                    </div>
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" class="inputBox" name="date" required="">
                    </div>
                    <div class="form-group">
                        <label for="id">category</label>
                        <input type="text" class="inputBox" name="category" required="">
                    </div>
                    <div class="form-group">
                        <label for="id">Quantity</label>
                        <input type="number" class="inputBox" name="quantity" required="">
                    </div>
                    <div class="form-group">
                   <input type="submit" name="submit" value="submit" 
                class="btn-success" onclick="return confirm('Are you sure Do you want to order this product?');">
                    </div>
                  
                </form>
            </div>
            </div>
                </div>
            </div>
        </div>
    </center>
    </body>
</html>
