<%-- 
    Document   : watchList
    Created on : Apr 8, 2023, 4:04:10 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="load();">
        <table>
            <tbody>
                <tr>
                    <td id="img">  
                    </td>
            <p id="name"></p>
                </tr>
            </tbody>
        </table>
        <script>
            function load(){
              const name = localStorage.getItem('img');
            const img = localStorage.getItem('name');
            document.getElementById('img').innerHTML = name;
            document.getElementById('img').textContent = name;
            document.getElementById('img').innerText = name;
            
            const image = document.getElementById('name').innerText=img;
            const image = document.getElementById('name').innerHTML=img;
            const image = document.getElementById('name').textContent=img;  
            }
            
            
        </script>
    </body>
</html>
