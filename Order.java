/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package productList;

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

@WebServlet(name = "Order", urlPatterns = {"/Order"})
public class Order extends HttpServlet {

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
        String id= request.getParameter("id");
        
        String date = request.getParameter("date");
        String pname= request.getParameter("pname");
        String category= request.getParameter("category");
        String comment= request.getParameter("comment");
       
           
        try ( PrintWriter out = response.getWriter()) {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
           String sql= "insert into orders values(?,?,?,?,?)";
           PreparedStatement ps = con.prepareStatement(sql);
           ps.setString(1, id);
           ps.setString(2, pname);
          
           ps.setString(3, date);
           ps.setString(4, category);
           ps.setString(5, comment);
           
           ps.executeUpdate();
           
           response.sendRedirect("dashTest.jsp");
        }
        catch(Exception e){
            e.printStackTrace();
        }

    }  @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
