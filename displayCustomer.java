/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package customer.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


@WebServlet(name = "displayCustomer", urlPatterns = {"/Customer"})
public class displayCustomer extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
        }
    }

       @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.print("<p align='center'>LIST OF REGISTERED CUSTOMERS");
         out.print("<table border='1' align='center'cellpadding='10'> <tr style='color: blue'><td>name</td><td>email</td><td>password</td><td>country</td><td>age</td><td>contacts</td><td>gender</td><td>marital</td><td>BOD</td><td>city</td><td>securityQuestion</td></tr>");
        try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shop?","root","");
           Statement st = con.createStatement();
           String query="select * from member";
           ResultSet rs = st.executeQuery(query);
           while(rs.next()){
               out.print("<tr><td>");
               
               out.print(rs.getString(1));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(2));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(3));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(4));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(5));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(6));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(7));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(8));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(9));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(10));
               out.print("</td>");
               out.print("<td>");
               out.print(rs.getString(11));
               
               out.print("</td>");
               out.print("</tr>");
           }
           out.print("</table>");
        }
        catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
