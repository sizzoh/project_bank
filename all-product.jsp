
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>all products</title>
        
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
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
            body{
                text-align: center;
                align-content: center;
            }
            .container{
                padding: 10px;    
            }
            .table{
                border:1px ;
                border-color: #000;
                border-bottom: 1px #000 solid;
                padding: 10px;
            }
            
            
            .row{
                font-size: 1em;
                color: black;
            }
            .table thead{
                background-color: #0075b0;
                color:  #000;
                    
            }
            .h{
                font-size: 2em;
                color: #000;
                text-transform: capitalize;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="h">list of all products</h1>
        <div class="row">
            <div class="col-sm-4">

                <table class="table">
                    <thead class="td">
                        <tr>
                            <th scope="col">product id</th>
                            <th scope="col">product name</th>
                            <th scope="col">product price</th>
                            <th scope="col">product description</th>
                            <th scope="col">status</th>
                            <th scope="col">product category</th>
                            <th scope="col">product image</th>
                            <td scope="col">delete product</td>
                        </tr>
                    </thead>
                    <tbody>  
                        <tr>

                            <%
                                
                                try{
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                                Statement st = con.createStatement();
                                ResultSet rs= st.executeQuery("select * from products");
                                while(rs.next())
                                {
                            %>

                            
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><img class="card-img-top" src="./images/<%=rs.getString(7)%>"alt="Card image cap"style="width:150px"></td>
                            <td><a href="DeleteProduct.jsp"><button class="btn btn-danger">delete<i class="fa fa-trash-o" aria-hidden="true"></i></button></a></td>
                        </tr>
                    </tbody>

                    <%}
                    }
                    catch(Exception e){
                       e.printStackTrace();
                    }
                    %>
                  
                </table>
            </div>
        </div>
        </div>
    </body>
</html>