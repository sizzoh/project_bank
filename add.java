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

@WebServlet(name = "add", urlPatterns = {"/add"})
public class add extends HttpServlet {

   
        

      
       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
          
       String  pid = request.getParameter("pid");
       String  pname = request.getParameter("pname");
       String  price = request.getParameter("price");
       
       String  description = request.getParameter("description");
       
       String status = request.getParameter("status");
       String category = request.getParameter("category");
       String  pimg= request.getParameter("pimg");
       
       try(PrintWriter out = response.getWriter()){
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
          String sql= ("insert into products values(?,?,?,?,?,?,?)");
          PreparedStatement ps =con.prepareStatement(sql);
          ps.setString(1, pid);
          ps.setString(2, pname);
          ps.setString(3, price);
          ps.setString(4, description);
          ps.setString(5, status);
          ps.setString(6, category);
          ps.setString(7, pimg);
          ps.executeUpdate();
          System.out.print("connection is" +con +"connected");
          response.sendRedirect("adminHome.jsp");
       }
       catch(Exception e){
           e.printStackTrace();
       }
            }

        @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
