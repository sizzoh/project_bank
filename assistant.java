package admin;

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

@WebServlet(name = "assistant", urlPatterns = {"/assistant"})
public class assistant extends HttpServlet {

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

        response.setContentType("text/html;charset=UTF-8");

        String email = request.getParameter("email");
        String upass = request.getParameter("upass");

        try (PrintWriter out = response.getWriter()) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from adminlogin where  email='" + email + "' and upass='" + upass + "' ");

            if (rs.next()) {

                rs.getString("email");
                rs.getString("upass");

            }
            if (email.equals("grace22@gmail.com") && upass.equals("assistant")) {
                out.println("login success");
                response.sendRedirect("adminHome.jsp?msg=valid");
            } else {
                out.println("login failed");
                response.sendRedirect("Assistantlogin.jsp?msg=invalid");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
