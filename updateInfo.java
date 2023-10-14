/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package customer;

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

/**
 *
 * @author window 10 pro
 */
@WebServlet(name = "updateInfo", urlPatterns = {"/update"})
public class updateInfo extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
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
        String password = request.getParameter("pass");
        String contact = request.getParameter("contact");
       // String confirm = request.getParameter("repass");
        String Marital = request.getParameter("marital");
        String sQ = request.getParameter("sQuestion");
       int verify =0;
         try (PrintWriter out = response.getWriter()) {
             
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            Statement st = conn.createStatement();
            String sql= "select * from member where email='"+email+"'";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()){
               verify=1;
  st.executeUpdate("update member set password='"+password+"',contacts='"+contact+"',marital='"+Marital+"',securityQuestion='"+sQ+"' where email='"+email+"'");
                   if(verify==1){
                response.sendRedirect("updateAccountInfo.jsp?msg=done");
            }
              else{
             response.sendRedirect("updateAccountInfo.jsp?msg=oops");
                
            }
           
           
            }
            conn.close();
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
