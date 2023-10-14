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
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet(name = "customerList", urlPatterns = {"/customer"})
public class customerList extends HttpServlet {

    
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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confpwd = request.getParameter("confirm");
//        response.getWriter().print(email);
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String contacts = request.getParameter("contacts");
        String Bdate = request.getParameter("Bdate");
        String marital = request.getParameter("marital");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String securityQuestion = request.getParameter("securityQuestion");
            System.out.println("oooooooooooozah");
        try ( PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
            PreparedStatement ps= con.prepareStatement("select * from member where name='"+name+"',email='"+email+"',password='"+password+"'"
                    + "confpwd='"+confpwd+"',age='"+age+"'");
            
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                rs.getString(name);
                rs.getString(email);
                rs.getString(password);
                rs.getString(confpwd);
                rs.getInt(age);
                rs.getString(gender);
                rs.getString(contacts);
                rs.getString(Bdate);
                rs.getString(marital);
                rs.getString(country);
                rs.getString(city);
                rs.getString(securityQuestion);
            }
            response.sendRedirect("customers.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

        @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
