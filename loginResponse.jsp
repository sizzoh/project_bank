<%@page import ="java.sql.*" %>

<%
    String email = request.getParameter("upass");
    String upass = request.getParameter("email");
    
    try{
           Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:myqsl://localhost:3306/shop","root","");
            ResultSet rs= con.createStatement("select * from adminlogin where  email=? and upass=? ");
            rs.setString(1, email);
            rs.setString(2, upass);
            
            rs.executeQuery();
            if(rs.next()){
            
            rs.getString("email");
            rs.getString("upass");
    }
        
       if( con!=null){
              System.out.println("login success");
              
              response.sendRedirect("adminHome.jsp");
            }
            else{
                System.out.println("login failed");
              response.sendRedirect("login.jsp");
              
            }
    }
    catch(Exception e)
    {
    e.printStackTrace();
    }
%>