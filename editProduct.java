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
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "editProduct", urlPatterns = {"/editProduct"})
public class editProduct extends HttpServlet {

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
        
        response.setContentType("text/html; charset=UTF-8");
        
        String pname = request.getParameter("pname");
        String pid = request.getParameter("pid");
        String price = request.getParameter("price");
        String category = request.getParameter("category");
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        String pimg= request.getParameter("pimg");
        
        int checkUpdate=0;
        try(PrintWriter out = response.getWriter()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            Statement st = con.createStatement();
            String query= "select * from products where pid='"+pid+"'";
            
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                checkUpdate=1;
                st.executeUpdate("update products set pname='"+pname+"',price='"+price+"',"
                + "description='"+description+"',status='"+status+"',category='"+category+"',"
               + "pimg='"+pimg+"' where pid='"+pid+"' ");
             
                response.sendRedirect("update_product.jsp?msg=done");
            }
          if(checkUpdate==0){
              response.sendRedirect("update_product.jsp?msg=invalid");
          }
          con.close();
      }
        
        catch(Exception e){
            System.out.println("failed");
           e.printStackTrace();
        }
    }

        @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
