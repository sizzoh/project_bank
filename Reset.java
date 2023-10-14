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
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author window 10 pro
 */
@WebServlet(name = "Reset", urlPatterns = {"/Reset"})
public class Reset extends HttpServlet {

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
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");

        String answer = request.getParameter("answer");
        String Newpassword = request.getParameter("Newpassword");
        
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            PreparedStatement ps = con.prepareStatement("update member where email =? and contacts=? and securityQuestion=? set password='"+Newpassword+"'");
            ps.setString(1, email);
            ps.setString(2, contact);
            ps.setString(3, Newpassword);
            //ps.setString(4, answer);
            ps.executeUpdate();
            response.sendRedirect("Customerlogin.jsp");
        }
        catch(IOException | ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
