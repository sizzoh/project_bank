<%-- 
    Document   : home
    Created on : Oct 13, 2023, 5:16:11 PM
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
        <title>home Page</title>
        <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.css" rel="stylesheet" />
         <link href="assets/bootstrap-5.2.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        
        <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
       <script src="assets/bootstrap-5.2.2-dist/js/bootstrap.bundle.js"></script>
        <script src="scripts.js"></script> 
    </head>
    <body>
       <nav class="navbar navbar-expand-lg sticky-lg-top navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><span class="text-warning">e-shopping mall</span> </a>
            <a class="navbar-brand" href="#">Login Time:<span class="text-default" id="time">login time</span> </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Navigate
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Take a Tour</a></li>
                            <li><a class="dropdown-item" href="About.html">About Us</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="Contact.html">Contact Us</a></li>
                            <li><a class="dropdown-item" href="Login.html">Log out</a></li>
                            <li><a class="dropdown-item" href="COS.html">COS</a></li>
                            <li><a class="dropdown-item" href="#">Reference</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex" id="form">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search">
                    <button class="btn btn-outline-success" type="submit" onclick="search2()">Search</button>
                </form>
            </div>
        </div>
    </nav>
        
        
        <div class="row">
            <%
                       try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                      Statement st = con.createStatement();
                       String sql=" select * from products";
                        ResultSet rs= st.executeQuery(sql);
                       while(rs.next()) {
                    %>
            <div class="col-md-3" style="justify-content:center; display:flex">

                <div class="card" style="height:fit-content; margin-bottom: 10px; width: fit-content; display: flex;justify-content: center">
                    <div class="card-body">
                        <img src="images/<%=rs.getString(7)%>" alt="product-image" class="img-responsive" style="width:150px;">
                        <p class="card-text">product name: <%=rs.getString(2)%></p>
                        <label class="form-label" id="price">price: $: <%=rs.getDouble(3)%>
                             <p class="card-text" id="cat">category: <%=rs.getString(6)%></p>
                              <p class="card-text" id="desc">description: <%=rs.getString(4)%></p>
                              <a href="buy.jsp" class="btn btn-primary">Buy Now</a>
                              <a href="orders.jsp" class="btn btn-success">Order</a>
                              <a href="cart_list?id=<%=rs.getInt(1)%>"><button class="btn btn-outline-success">add to cart</button></a>
                       
                    </div>
                </div>
            </div>
            <%
                    }
                  }
                    catch(Exception e){
                     e.printStackTrace();
                 }
                %>
                <jsp:include page="footre.jsp"></jsp:include>
        </div>
    </body>
</html>
