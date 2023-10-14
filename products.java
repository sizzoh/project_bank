package productList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "products", urlPatterns = {"/products"})
public class products extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String pid = request.getParameter("pid");
        
        String pname = request.getParameter("pname");
        String price =request.getParameter("price");
        
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        String category = request.getParameter("category");
        String pimg = request.getParameter("pimg");
        
        product products = new product(pid,pname,price,description,status,category,pimg);
        productListDao prDao = new productListDao();
        
        try(PrintWriter out = response.getWriter()){
          
          String  result = prDao.insert(products);
            response.getWriter().print(result);
            out.println("connected");
            response.sendRedirect("adminHome.jsp");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("connection error");
        }  
            
        }
    

       @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
