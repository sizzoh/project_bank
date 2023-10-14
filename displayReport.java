/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package products;

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
import java.sql.Statement;


@WebServlet(name = "displayReport", urlPatterns = {"/display"})
public class displayReport extends HttpServlet {

   
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
        //int id = Integer.parseInt(request.getParameter("id"));
        
      out.print("<p align='center'>This is Daily Shop report");
      out.print("<table border='1' align='center'cellpadding='20'><tr><th></th><th>purchase</th><th>sales</th><th>debtors</th><th>profit</th></tr>");
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            Statement st = con.createStatement();
            String sql="select * from report ";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                out.print("<tr><td>");
               // out.print(rs.getInt(1));
                out.print("</td>");
                out.print("<td>");
                out.print(rs.getInt(1));
                out.print("</td>");
                out.print("<td>");
                out.print(rs.getInt(2));
                out.print("</td>");
                out.print("<td>");
                out.print(rs.getInt(3));
                out.print("</td>");
                out.print("<td>");
                out.print(rs.getInt(4));
                out.print("</td>");
                out.print("</tr>");
            }
          
        }
        catch(Exception e){
            e.printStackTrace();
        }
        out.print("</table>");
    }
     
        @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
