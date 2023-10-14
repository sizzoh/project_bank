<%-- 
    Document   : userdashboard
    Created on : Mar 4, 2023, 5:17:01 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashoard</title>

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

            .navbar{
                text-decoration: none;

            }
            .navbar ul{
                text-decoration: none;
                padding: 20px;
                list-style: none;

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
            .menu-bar{
                width: 100%;
                height: 100%;
                background: #04414d;
                padding: 10px;
            }
            .menu-bar li{
                float: right;
                text-decoration: none;
                list-style: none;
                padding: 10px;

            }

            .menu-bar li a{
                color: white;
                float: right;
                text-decoration: none;
            }
            .menu-bar li:hover{
                background: gray;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="menu-bar">
                <a class="navbar-brand" href="#" style="text-decoration: none;color: #f9fafb">shop</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" 
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <li class="dropdown" data-toggle="dropdown">
                    <a class="nav-link" href="logout.jsp">LOGOUT <span class="sr-only"></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only"></span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="addTocart.jsp">cart</a>
                </li>

                <form class="form-inline my-2 my-lg-0" action="search" method="post">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="input">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
         <div class="container">
            <div class="card-header my-3">All Products</div>

            <div class="row">
                <div class="col md-3">
                    <div class="card" style="width: 18rem;">
                        
            <%
                  try{
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                  Statement st = con.createStatement();
                  String sql=" select * from products";
                  ResultSet rs= st.executeQuery(sql);
                  while(rs.next()) {
          
            %>
                      <img class="card-img-top" src="./images/<%=rs.getString(7)%>" 
                       alt="Card image cap"style="width:150px">       
                        <div class="card-body">
                            <h5 class="card-title">product name:<%=rs.getString(2)%></h5>
                            <h6 class="card-title">price:<%=rs.getDouble(3)%></h6>
                            <p class="card-text">category:<%=rs.getString(6)%></p>
                            <div class="mt-3 d-flex justify-content-between">
                                <a href="#" class="btn btn-primary">Buy Now</a> 
                                <a href="orders.jsp" class="btn btn-success">Order</a>
                            </div>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <% }
        }
         catch(Exception e){
                e.printStackTrace();
             }
        %>
</body>
</html>
