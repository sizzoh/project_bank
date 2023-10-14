package customer.servlet;
import customer.connection.DBconnection;
import customer.model.dao.userDao;
import customer.model.userlogin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


@WebServlet(name = "userSevlet", urlPatterns = {"/user"})
public class userSevlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
           
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
             HttpSession session = request.getSession();
             session.setAttribute("email",email);
             
            try {
                userDao uDao = new userDao(DBconnection.getConnection());
                userlogin user =  uDao.user(password, email);
            
              
              if(user!=null){
                  
                  request.getSession().setAttribute("auth", user);
                  response.sendRedirect("home.jsp?msg=valid");
              }
                 
                 
                  else if(email.equals("greysonpeter37@gmail.com") && password.equals("admin")){
                   response.sendRedirect("adminHome.jsp");
                  }
                   else if(email.equals("grace22@gmail.com") && password.equals("assistant")){
                   response.sendRedirect("adminHome.jsp");
                  }
                     //request.setAttribute("email", user);
                     //session.setAttribute("email", name);
                      //RequestDispatcher dispatcher = request.getRequestDispatcher("dashTest.jsp");
                      //dispatcher.forward(request, response);
                  
              
              else{
                  
                  response.sendRedirect("login.jsp?msg=invalid");
              }
            } catch (ClassNotFoundException | SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

       @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
