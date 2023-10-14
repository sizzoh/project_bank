<%-- 
    Document   : logout
    Created on : Oct 26, 2022, 2:28:11 AM
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
                response.sendRedirect("Customerlogin.jsp");
        %>
    </body>
</html>
