<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<title></title>
<style>
    .div ul li a{
        list-style: none;
        padding: 10px;
        text-decoration: none;
    }
</style>
<section class="menu-section">
   
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                        <li><a href="adminHome.jsp">Home</a></li>

                        <ul class="dropdown-menu" role="menu"
                            aria-labelledby="ddlmenuItem">
                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                       href="products.jsp">View Products</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                       href="newproduct.jsp">Add Product</a></li>
                        </ul>

                        <li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
                               data-toggle="dropdown">Order <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu"
                                aria-labelledby="ddlmenuItem">

                            </ul></li>
                        <li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
                               data-toggle="dropdown">Customer <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu"
                                aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                                           href="customers.jsp">View Customers</a></li>
                            </ul></li>

                        

                    </ul></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
</section>
                                    