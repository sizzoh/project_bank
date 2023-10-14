<%@page import ="customer.ConnectionProvider"%>
<%@page import ="java.sql.*" %>
<%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");

        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String contacts = request.getParameter("contact");
        String Bdate = request.getParameter("Bdate");
        String marital = request.getParameter("marital");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String securityQuestion = request.getParameter("securityQuestion"); 

try{
    
    Connection con= ConnectionProvider.getCon();
     
     PreparedStatement ps = con.prepareStatement ("insert into member values (?,?,?,?,?,?,?,?,?,?,?,?)");
    
        ps.setString(1,name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, confirm);
        ps.setString(5, age);
        ps.setString(6, gender);
        ps.setString(7, contacts);
        ps.setString(8, Bdate);
        ps.setString(9, marital);
        ps.setString(10,country);
        ps.setString(11,city);
        ps.setString(12,securityQuestion);
        ps.executeUpdate();
        
     Response.sendRedirect("Register.jsp?msg=valid");
catch(Exception e)
{
System.out.println(e);
Response.sendRedirect("Register.jsp?msg=invalid");
}
        %>