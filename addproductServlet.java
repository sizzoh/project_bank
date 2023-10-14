package products;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "addproductServlet", urlPatterns = {"/add-product"})
public class addproductServlet extends HttpServlet {
   productDao productDao;
   
   
   @Override
   public void init(){
       productDao = new productDao();
       
   }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try( PrintWriter out = response.getWriter()) {
           
           String action = request.getServletPath();
           response.sendRedirect("dashboard.jsp");
           switch(action){
               case "/new":
                   showNewForm(request, response);
                   break;
               case "/insert":
               {
                   
               insertProduct(request, response);
                   
               }
               break;
               
               
               case "/delete":
                   deleteProduct(request, response);
                   break;
                   
               case "/edit":
                   showEditForm(request, response);
                   break;
               case "/update":
                   updateProduct(request, response);
                   break;
               default:
                   listProduct(request,response);
                   break;
                   
           }
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
        
    }
private void showNewForm(HttpServletRequest request, HttpServletResponse response)
              throws ServletException, IOException {
            RequestDispatcher dispatcher = request.getRequestDispatcher("new-product.jsp");
            dispatcher.forward(request, response);
        }
  private void insertProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        
        String pname= request.getParameter("pname");
        int pid= Integer.parseInt(request.getParameter("pid"));
        Double price= Double.parseDouble(request.getParameter("price"));
        String description= request.getParameter("description");
        String status= request.getParameter("status");
        String category= request.getParameter("category");
        String pimg= request.getParameter("pimg");
        product newproduct = new product(pid,pname, price,description, status,category,pimg);
        productDao.insertproduct(newproduct);
        response.sendRedirect("list");
   }
  private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        int pid = Integer.parseInt(request.getParameter("pid"));
        try{
            productDao.deleteProduct(pid);
            response.sendRedirect("list");
        }
        catch(SQLException e){
            
        }
        

}
  private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        product existingProduct;
        int pid = Integer.parseInt(request.getParameter("pid"));
        try{
          existingProduct = productDao.selectProductID(pid);
          RequestDispatcher dispatcher = request.getRequestDispatcher("updataProduct.jsp");
          request.setAttribute("list", existingProduct);
          dispatcher.forward(request, response);
          
        }
        catch(SQLException e){
            
        }
  }
  private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        int pid = Integer.parseInt(request.getParameter("pid"));
        String pname= request.getParameter("pname");
        Double price= Double.parseDouble(request.getParameter("price"));
        String description= request.getParameter("description");
        String status= request.getParameter("status");
        String category= request.getParameter("category");
        String pimg= request.getParameter("pimg");
        product Product = new product(pid,pname, price,description,status,category,pimg);
        productDao.UpdateProducts(Product);
        request.setAttribute(pname, pid);
        response.sendRedirect("list");
  }
  private void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        List<product> listProduct = productDao.selectAllProduct();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("products.jsp");
        dispatcher.forward(request, response);
  }
}