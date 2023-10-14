

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="customer.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        String pid = request.getParameter("pid");
        String pname = request.getParameter("pname");
        String price = request.getParameter("price");
        String description = response.getParameter("description");
        String status = response.getParameter("status");
        String category = request.getParameter("category");
        String pimg = request.getParameter("pimg");
        
        try{
     Connection con = Connection.getCon();
     PreparedStatement ps = con.prepareStement("insert into products values(?,?,?,?,?,?,?)");
     ps.setString(1,pid);
     ps.setString(2,pname);
     ps.setString(3,price);
     ps.setString(4,description);
     ps.setString(5,status);
     ps.setString(6,category);
     ps.setString(7,pimg);
     ps.executeUpdate();
     response.sendRedirect("adminHome.jsp");
            }
            catch(Exception e){
            
            }
        %>
    </body>
</html>
