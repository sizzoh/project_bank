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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "message", urlPatterns = {"/message"})
public class message extends HttpServlet {

   
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
        out.print("<p align='center'>customer contacts");
        out.print("<table border='2' align='center'cellpadding='10'><tr style='color:red'><td>name</td><td>email</td><td>date</td><td>subject</td><td>message</td></tr>");
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","");
            Statement st = con.createStatement();
            String sql= "select * from contacts";
            ResultSet rs = st.executeQuery(sql);
            
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
               out.print("</tr>");
            }
            out.print("</table>");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
