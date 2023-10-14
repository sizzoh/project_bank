<%-- 
    Document   : updateCustomer
    Created on : Nov 2, 2022, 2:02:20 AM
    Author     : window 10 pro
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit product</title>
    </head>
    <style>
        body{
            background-image: url(images/trans3.jpg);
            background-position:center;
            padding: 20px;
           
        }
        .container{
            width: 50%;
            height: 650px;
            background-color:linen;
            border-top: 1px #000;
            padding: 20px;
           
        }
        .container div{
            padding: 5px;
            width: 50px;
        }
        .container div input{
            border-bottom: 1px #000 solid;
            height: 20px;
        }
        .head{
            color: gray;
            text-transform: capitalize;
            font-size: 1em;
        }
        .container div input[type="submit"]{
           width:50px;
           cursor: pointer;
           text-transform: uppercase;
           background-color: #080808;
           color: white;
        }
        .container div input[type="submit"]:hover{
            background-color: #842029;
        }
        .container div input[type="view"]{
            background-color: #080808;
            width: 100px;
            cursor: pointer;
            text-transform: uppercase;
            color: white;
            
        }
        .container div input[type="view"]:hover{
            background-color: #0c4128;
        }
       
    </style>
    <body>
    <center>
        
        <div class="container">
            <marquee class="head">admin edit product page</marquee>
             <%
                String msg= request.getParameter("msg");
                 if("done".equals(msg)){
                             
                        %>
                        <h2 style="font-size:1em; color: white">product updated successfully</h2>
                        <%}%>
                        <%
                            if("invalid".equals(msg))
                            {
                           %>
                           <h3 style="font-size:1em; color: white">something went wrong try again</h3>
                           <% }%>
            <div class="row">
                <div class="col-sm-4">
                    <form class="form-group" action="editProduct" method="post">
                        <div class="form-group" align="left">
                            <label for="pid">product id</label>
                            <input type="number" name="pid" placeholder="product id" required="">
                        </div>
                        <div class="form-group" align="left">
                            <label for="pid">product name</label>
                            <input type="text" name="pname" placeholder="product name" id="pid" required="">
                        </div>
                        <div class="form-group" align="left">
                            <label for="pid">product price</label>
                            <input type="number" name="price" placeholder="product price" required="">
                        </div>
                        <div class="form-group" align="left">
                            <label for="pid">product category</label>
                            <input type="text" name="category" placeholder="product category" required="">
                        </div>
                        <div class="form-group" align="left">
                            <label for="pid">product status</label>
                            <select name="status"> 
                                <option>active</option>
                                <option>inactive</option>
                                
                            </select>
                        </div>
                        <div class="form-group" align="left">
                            <label for="pid">product description </label>
                            <input type="text" name="description" placeholder="product description" required="">
                        </div>
                        <div class="form-group" align="left">
                            <label for="pimg">product image</label>
                            <input type="file" name="pimg" placeholder="product image" required="">
                        </div>
                        <div class="form-group" align="left">
                            <input type="submit" name="edit" value="edit"><br>
                            
                        </div>
                        <a href="all-product.jsp" ><input type="view" value="view products"></a>
                    </form>
                </div>
            </div>
        </div>
    </center>
    </body>
</html>
