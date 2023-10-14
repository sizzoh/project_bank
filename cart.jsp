
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
              ">
        <link hreflang="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js">
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
            .table tbody td{
                vertical-align: middle;

            }
            .table{
                text-align: center;
                padding:10px;
                border-color: #084298;
                border: 1px;
                
            }
            .btn-incre, btn-decre{
                box-shadow: none;
                font-size: 25px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <form class="form-inline" action="" method="">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col"     id="h1">product image</th>
                        <th scope="col" id="h2">product name</th>
                        <th scope="col" id="h3">product price</th>
                        <th scope="col" id="h4">product category</th>
                        <th scope="col" id="h5">product description</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td name="d6">${param.d1}</td>
                    <td name="d"7> <%=request.getAttribute("d2")%></td>
                    <td name="d8"><%=request.getAttribute("d3")%></td>
                    <td name="d9"><%=request.getAttribute("d4")%></td>
                    <td name="d10"><%=request.getAttribute("d5")%></td>
                </tr>
            </tbody>
        </table>
        </div>
    
</body>
</html>