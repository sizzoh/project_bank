<%-- 
    Document   : tempo
    Created on : Nov 15, 2022, 1:18:01 AM
    Author     : window 10 pro
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>orders</title>
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
                padding: 30px;
                width: 100%;
                
            }
            .table{
                border:2px;
                border-color: #000;
                padding: 10px;
            }
            .q{
                text-transform: uppercase;
                font-size: 2em;
                color: #084298;
            }
            
            .row{
                font-size: 2em;
                color: black;
            }
        </style>
    </head>
   
    <body>
    
        <div class="container">
            <center>
            <div class="main">
            <marguee class="q">all orders</marguee>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col" class="row" id="oid">order id</th>
                        <th scope="col" class="row">product name</th>
                        <th scope="col" class="row">order date</th>
                        <th scope="col" class="row">product category</th>
                        <th scope="col" class="row">comment</th>
                        <th scope="col" class="row">accept order</th>
                        <th scope="col" class="row">cancel</th>
                       
                    </tr>
                </thead>
                <tbody>
                    
                   <%
                  try{
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
                  Statement st = con.createStatement();
                  String sql=" select * from orders";
                  ResultSet rs= st.executeQuery(sql);
                  while(rs.next()) {
          
            %>
            <tr>
            <td id="pid"><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getDate(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="acceptOrder.jsp"><button class="button btn-success">accept
                    <i class="fa fa-check-circle-o" aria-hidden="true"></i></button></a></td>
                    <td><a href="cancel?id=<%=rs.getInt(1)%>     "><button class="button btn-default" name="cancel">cancel
                    <i class="fa fa-ban" aria-hidden="true"></i></button></a></td>
           
            <% }
                
            }
            
                catch(Exception e){
                        
                        }
                %>
                     </tr>
                </tbody>
            </table>
   
        </div>
            </center>
        </div>
       <script>
       function order(){
        document.getElementById('oid'}.value= document.getElementById('pid');                    
        }
      
       </script>            
       </body>
   
</html>
