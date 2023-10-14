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

@WebServlet(name = "forgetPassword", urlPatterns = {"/forget"})
public class forgetPassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");

        String answer = request.getParameter("answer");
        String Newpassword = request.getParameter("Newpassword");

        int check = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            Statement st = con.createStatement();
            String sql = "select * from member where email='" +email+ "' and contacts='" +contact+ "' and securityQuestion='" +answer+ "' ";
            ResultSet rs = st.executeQuery(sql);
            
     
     while (rs.next()) {
                check = 1;
                st.executeUpdate(" update member set password = '" + Newpassword + "' where email='"+email+"' ");
                //st.executeUpdate("update member where email = 'gerald22@gmail.com' set password='"+Newpassword+"'");
                response.sendRedirect("forgotPass.jsp?msg=done");
            }
            if (check== 0) {
                response.sendRedirect("forgotPass.jsp?msg=invalid");
            }
        
        } catch (IOException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
