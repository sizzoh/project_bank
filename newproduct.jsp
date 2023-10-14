
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import="customer.ConnectionProvider" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add product</title>

        <style>
            body{
                background: url(images/shop.jpg);
                background-position: right;
            }
            .navbar{
                text-decoration: none;
            }
            .navbar ul{
                text-decoration: none;
                padding: 2px;

            }
            .navbar ul li a{
                text-decoration: none;
                padding: initial;
                float: right;
            }
            .nav-link{
                text-decoration: none;
                padding: auto;
                text-align-last: end;
                float: right;
            }
            .container{
                width: 50%;
                height: 50%;
                background: darkgrey;
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
        </style>
    </head>

    <body>
        <div class="container">
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="container ">
                <div class="menu-bar">
                  <a href="logout.jsp" class="btn btn-danger pull-right">LOG OUT</a>
                    </div>

                </div>
                <br><br>
                <div class="right-div">

            </div>

            <!-- MENU SECTION END-->
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">Add Product</h4>
                        </div>
                    </div>
                </div>
            </div>
              </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-body">
                                <form action="products" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        
                                        <label>product id</label>
                                        <input class="form-control" type="number" name="pid" required="">
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        
                                        <label>Enter Name</label>
                                        <input class="form-control" type="text" name="pname" required="">
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label>Price: </label>
                                        <input class="form-control" type="text" name="price" required="" >
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label>Description</label> 
                                        <input class="form-control" type="text" style="min-height: 100px;" name="description" />
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label>Status:  </label>
                                        <select class="form-control" name="status">
                                            <option value="Active">Active</option>
                                            <option value="inActive">In-Active</option>
                                        </select>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label>Product Category</label> <select class="form-control" name="category" required="">
                                            <option>Select Category</option>
                                            <option>food </option>
                                            <option>clothes</option>
                                            <option>furniture </option>
                                            <option>drink</option>
                                            <option>wears</option>
                                            <option>home tools</option>
                                            <option>sports</option>
                                            <option>decoration</option>
                                            <option>accessory</option>
                                            <option>hardware</option>
                                            <!-- <option>XYZ</option> -->
                                        </select>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label>Attach Product Image</label>
                                        <input type="file" name="pimg">
                                    </div>
                                    <button type="submit" class="btn btn-success" 
                                     onclick="return confirm('Are you sure Do you want to add this product?');"
                                     style="color: green; cursor: pointer">Add
                                        </button>
                                    <br><br>
                                    <button type="reset" class="btn btn-danger" style="color: red">Reset</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>