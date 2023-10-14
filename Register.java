package customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
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

        Member member = new Member(name, email, password, confpwd, age, gender, Bdate, marital, contacts, country, city, securityQuestion);
        RegisterDao rDao = new RegisterDao();

        try {
            String result = rDao.insert(member);
            response.getWriter().print(result);
            System.out.println("connected");
            response.sendRedirect("Customerlogin.jsp");
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
