<%-- 
    Document   : adminlogout
    Created on : Nov 12, 2022, 11:42:36 PM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>log out</title>
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("login.jsp");
        %>
    </body>
</html>
