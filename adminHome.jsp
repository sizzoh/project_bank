
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
         type="text/css"/>
        <title>shop sales</title>
        
    </head>
    <body>
        <style>
 *
{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body
{
    background: url(images/shop.jpg);
    background-size: cover;
    background-position: center;
    font-family:  sans-serif;

}
.menu-bar{
    background: rgb(0,100,0) ;
     text-align: center ;
     width:  1600px;
}
.menu-bar ul{
display: inline-flex;
list-style: none;
color: #fff;
}
.menu-bar ul li
{
    width: 120px;
    margin: 15px;
    padding: 15px;

}
.menu-bar ul li a
{
    text-decoration: none;
    color: #fff;
}
.menu-bar ul li:hover
{
    background: gray;
    border-radius: 6px;
}
.menu-bar fa{
    margin-right: 8px;
}
marquee{
    line-height: 30px;
    background-color:dimgray;
}
        </style>
    <body>
       
   <div class="menu-bar">
      <div class="container">
     <ul>  
    <li><a href="customers.jsp">customers</a><i class="fa fa-users"></i></li>
   <li><a href="addproductConfirm.jsp">add product</a><i class="fa fa-plus-square" aria-hidden="true"></i></i></li>
   <li><a href="update_product.jsp">update product<i class="fa fa-window-restore" aria-hidden="true"></i></a></i></li>
  
    <li><a href="all-product.jsp">product<i class="fa fa-product-hunt" aria-hidden="true"></a></i></li>
<li ><a href="view-contacts.jsp">view contacts<i class="fa fa-eye" aria-hidden="true"></i></a></li>
   <li ><a href="orderAction.jsp">view orders<i class="fa fa-eye-slash" aria-hidden="true"></i></a></li>
   <li ><a href="report.jsp">report<i class="fa fa-flag" aria-hidden="true"></i></a></li>
   <li ><a href="displayReport.jsp"> display report<i class="fa fa-television" aria-hidden="true"></i></a></li>
   <li ><a href="adminlogout.jsp">LOG OUT<i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
   </ul>
         
   </div>
  </div>
   <%
   HttpSession sessions = request.getSession();
   
   %>
    <marquee>logged in as: <%out.print(sessions.getAttribute("email"));%></marquee>
 </body>
</html>
