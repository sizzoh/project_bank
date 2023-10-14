<%-- 
    Document   : dashTest
    Created on : Mar 10, 2023, 5:02:25 PM
    Author     : window 10 pro
--%>

<%@page import = "java.sql.*" %>
<%@page language= "java" %>
<%@page import= "javax.servlet.htttp.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dashboard</title>
       
        <!-- CUSTOM STYLE  -->
        <%-- <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.css" rel="stylesheet" />
         <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet" />--%>
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- GOOGLE FONT -->
        <script src="assets/js/bootstrap.js"></script>
        <%--<script src="assets/bootstrap-5.2.2-dist/js/bootstrap.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.bundle.js"></script>--%>
        <script src="scripts.js"></script> 
        <style>
            body{

            }
            .main{
                align-content: center;
                text-align: center;

            }
            .form-label img{
                width: 150px;
            }
            .table{
                text-align: center;
                padding:10px;
                border-color: #084298;
                border: 1px;
                overflow-y: scroll;
                border-bottom:1px #000 solid;
                border-top:1px #000 solid;
                border-left:1px #000 solid;
                border-right:1px #000 solid;
                margin-top: -200px;


            }
            .head{
                text-transform: capitalize;
                font-style: italic;
                color: gray;
                font-size: 1em;
            }
            .navbar{
                text-decoration: none;

                width: 100%

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
                line-height: 24px;

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
            #loginName{
                font-size:12px;
                text-transform: capitalize;
                float: left;
            }
            .header-top{
                width:100%;
                height:40%;
                padding-top:0px;
            }
            .cart-list{
                padding: 10px;
                width: 50%;
                height: 100%;
                position:relative;
                transition: 0.8s ease-in-out;
                -webkit-animation-direction:left;
                -webkit-animation-delay:0.8s ease-in-out;
                display: none;
                float:right;
                margin-top: -2000px;
                left: 10%;
            }
            .cart-table{
                border:none;
                border-bottom:1px #000 solid;
                border-top: 1px #000 solid;
                border-left: 1px #000 solid;
                border-right: 1px #000 solid;
            }
            .cart-table thead tr th{
                background:gray;
                padding: 10px;

            }
            .cart-table tbody tr td{
                border: 1px #000 solid;
            }
            #search{
                background-image: url(images/search.png);
                border-radius:22px;
                transition: 0.8s ease-in-out;
                -webkit-transition: 0.8s ease-in-out;
                background-position:right;
                background-size: 2em;
                background-repeat: no-repeat;

            }
            #search:checked{
                transition: 0.8s ease-in-out;
                -webkit-transition: 0.8s ease-in-out;
                width:10%;
                animation-direction: alternate;
            }
            .search{
                visibility: hidden;
            }
            .main h2{
                text-transform: capitalize;
                font-style: italic;
                line-height:2px;
                font-size: 20px;
            }
        </style>
    </head>

    <body onload="time()">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" id="nav">
            <div class="menu-bar">
                <a class="navbar-brand" href="#" style="text-decoration: none;color: #f9fafb">shop</a>

                <li>
                    <a href="logout.jsp">Log out<i class="fa fa-sign-out" aria-hidden="true"></i></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="new-product.jsp">New products
                        <i class="fa fa-home" aria-hidden="true"></i><span class="sr-only"></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="new-product.jsp">chats
                        <a class="nav-link" href="home.jsp">home
                        <i class="fa fa-home" aria-hidden="true"></i><span class="sr-only"></span></a>
                </li>
                <%
                    int quantity=0;
                    try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                    String query="select count(pid) from cart";
                    Statement stm = connection.createStatement();
                    ResultSet rst = stm.executeQuery(query);
                    while(rst.next()){
                    
                    
                %>

                <li class="nav-item">
                    <a class="nav-link" href="addTocart.jsp" id="cart" value="">cart
                        <%out.print(quantity);%>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                </li>
                <%}
                }
                catch(Exception e)
                {
                e.printStackTrace();
                }
                %>
                <li>
                    <a class="fa fa-navicon" href="news.jsp">news</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home
                        <i class="fa fa-home" aria-hidden="true"></i><span class="sr-only">(current)</span></a>
                </li>


                <form class="form-inline my-2 my-lg-0" action="search" method="post">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" 
                           aria-label="Search" name="input" id="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>

            </div>

        </nav>
        <div class="main" id="main">
            <div class="header-top">
                <h1 style="font-size:15px;float:right;" id="time"> Clock </h1>  
                <%
                    String msg= request.getParameter("msg");
                    if("nosearchedItem".equals(msg)){
                %>
                <h2>No item matched your search</h2>
                <%}
                %>
                <%
                  
                    HttpSession sesion = request.getSession();
                    
                      if(sesion==null){
                      response.sendRedirect("Customerlogin.jsp");
                    }
                    else if(sesion != null){
                    //String email = (String) session.getAttribute("email");
                    out.println("<p>Logged in as: " +sesion.getAttribute("email")+"</p>");
                    }
                %>
            </div>
            <table class="table" id="table-animated">  
                <thead>
                    <tr>
                        <th scope="col" id="h1">product image</th>
                        <th scope="col" id="h2">product name</th>
                        <th scope="col" id="h3">product price</th>
                        <th scope="col" id="h4">product category</th>
                        <th scope="col" id="h5">product description</th>
                        <th scope="col" id="h6">Buy product  </th>
                        <th scope="col" id="h7">order product </th><br>
                        <th scope="col" id="h8"> cart </th>

                </tr>
                </thead>
                <tbody>
                    <%
                       try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                      Statement st = con.createStatement();
                       String sql=" select * from products";
                        ResultSet rs= st.executeQuery(sql);
                       while(rs.next()) {
                    %>
                    <tr>
                        <td name="d1"> <label for="product img" class="form-label"><img src="images/<%=rs.getString(7)%>" id="image">
                            </label></td>
                        <td name="d2" id="name"><label for="pname" class="form-label" id="pname"><%=rs.getString(2)%>
                            </label></td>
                        <td name="d3"><label class="form-label" id="price">$: <%=rs.getDouble(3)%>
                            </label></td>
                        <td name="d4"> <p class="card-text" id="cat"><%=rs.getString(6)%></p></td>
                        <td name="d5"> <p class="card-text" id="desc"><%=rs.getString(4)%></p></td>
                        <td><a href="buy.jsp" class="btn btn-primary">Buy Now</a> </td>
                        <td> <a href="orders.jsp" class="btn btn-success">Order</a></td>
                        <td><a href="cart_list?id=<%=rs.getInt(1)%>"><button class="btn btn-outline-success">add to cart</button></a></td> 


                    </tr>
                </tbody>

                <%
                    }
                  }
                    catch(Exception e){
                     e.printStackTrace();
                 }
                %>

            </table>
        </div>
        <div class="cart-list" id="cart">
            <p>products in cart</p>
            <table class="cart-table">
                <thead>
                    <tr>
                        <th scope="col">product image</th>
                        <th scope="col">product name</th>
                        <th scope="col">product price</th>
                        <th scope="col">product category</th>
                        <th scope="col">Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <td id="d1"></td> 
                        <td id="d2"></td>
                        <td id="d3"></td>
                        <td id="d4"></td>
                        <td id="d5"></td>

                    </tr> 
                </tbody>
            </table>
        </div>
        <%--
        <div class="search" id="searchItem">
           <table class="table" id="table-animated">  
        <thead>
            <tr>
                <th scope="col" id="h1">product image</th>
                <th scope="col" id="h2">product name</th>
                <th scope="col" id="h3">product price</th>
                <th scope="col" id="h4">product category</th>
                <th scope="col" id="h5">product description</th>
                <th scope="col" id="h6">Buy product  </th>
                <th scope="col" id="h7">order product </th><br>
                 <th scope="col" id="h8"> cart </th>

                </tr>
                </thead>
                <tbody>
                    <%
                       String name = request.getParameter("input");
                       try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                      Statement stm = conn.createStatement();
                       String query=" select * from products where pname='"+name+"'";
                        ResultSet rst= stm.executeQuery(query);
                       while(rst.next()) {
                    %>
                    <tr>
                        <td name="d1"> <label for="product img" class="form-label"><img src="images/<%=rst.getString(7)%>" id="image">
                            </label></td>
                        <td name="d2" id="name"><label for="pname" class="form-label" id="pname"><%=rst.getString(2)%>
                            </label></td>
                        <td name="d3"><label class="form-label" id="price">$: <%=rst.getDouble(3)%>
                            </label></td>
                        <td name="d4"> <p class="card-text" id="cat"><%=rst.getString(6)%></p></td>
                        <td name="d5"> <p class="card-text" id="desc"><%=rst.getString(4)%></p></td>
                        <td><a href="#" class="btn btn-primary">Buy Now</a> </td>
                        <td> <a href="orders.jsp" class="btn btn-success">Order</a></td>
                        <td><a href="#"><button class="btn btn-outline-success" 
                                                onclick="cart();" onmouseover="">add to cart</button></a></td>

                    </tr>
                </tbody>

                <%
                    }
                  }
                    catch(Exception e){
                     e.printStackTrace();
                 }
                %>

            </table>
                </div>
        --%>
        <script>

            document.getElementById('h1').style.color = "blue";
            document.getElementById('h2').style.color = "blue";
            document.getElementById('h3').style.color = "blue";
            document.getElementById('h4').style.color = "blue";
            document.getElementById('h5').style.color = "blue";
            document.getElementById('h6').style.color = "blue";
            document.getElementById('h7').style.color = "blue";
            document.getElementById('h8').style.color = "blue";
            //const name = localStorage.getItem('loginName');
            // document.getElementById('loginName').textContent = name;
            /*  window.addEventListener('load', () => {
             const params = (new URL(document.location)).searchParams;
             const name = params.get('email');
             document.getElementById('loginName').innerHTML = name;
             });*/
            function search() {
                document.getElementById('searchItem').style.visibility = "visible";
                document.getElementById('main').style.visibility = "hidden";

            }

        </script> 
        <jsp:include page="footer.jsp"></jsp:include>
    </body>

</html>
