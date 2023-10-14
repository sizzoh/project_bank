package admin;

import customer.ConnectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

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

        try (PrintWriter out = response.getWriter()) {

            String upass = request.getParameter("upass");
            String email = request.getParameter("email");
            adminDao aDao = new adminDao(ConnectionProvider.getCon());
            adminlogin admin = aDao.admin(email, upass);

            if (admin != null) {
                out.println("login success");
                request.getSession().setAttribute("auth", admin);
                response.sendRedirect("adminHome.jsp");
            } else {
                out.println("login failed");
                response.sendRedirect("login.jsp");

            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
