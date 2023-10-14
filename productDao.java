
package products;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import showproducts.Newproduct;

public class productDao {
  private final String jdbcUrl="jdbc:mysql://localhost:3306/shop";
  private final String jdbcUsername="root";
  private final String jdbcpassword="";
  private final String jdbcDriver="com.mysql.cj.jdbc.Driver";
  
  public static String INSERT_PRODUCT_SQL="insert into products "+"(pname, pid,price,category,pimg) values "+"(?,?,?,?,?)";  
  public static String SELECT_BY_ID_SQL="select from products (pname,price, pid) where pid=?";
  public static String  SELECT_ALL_PRODUCTS="select * from products";
  public static String  DELETE_PRODUCT_SQL="delete from products where pid =?";
  public static String UPDATE_PRODUCT_SQL="UPDATE products set pname=?, pid=? and price=?";
  
    
    public productDao(){
        
    }
    protected Connection getConnection() {
        Connection con=null;
    
        try{
            Class.forName(jdbcDriver);
           con=DriverManager.getConnection(jdbcUrl,jdbcUsername,jdbcpassword);
           
        }
        catch(ClassNotFoundException | SQLException e){
            
        }
      return con;
    }
    public void insertproduct(product Product) throws SQLException{
        try(Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(INSERT_PRODUCT_SQL)){
            ps.setString(1, Product.getname());
            ps.setDouble(2, Product.getprice());
            ps.setString(3, Product.getdescription());
            ps.setString(4, Product.getstatus());
            ps.setString(5, Product.getCategory());
            ps.setString(6, Product.getImage());
            System.out.print(ps);
            ps.executeUpdate();
        }
        catch(SQLException e){
            printSQLException(e);
        }
    }
    public product selectProductID(int pid) throws SQLException{
        product Product=null;
        try(Connection con= getConnection();
            PreparedStatement ps = con.prepareStatement(SELECT_BY_ID_SQL)){
            ps.setInt(1, pid);
            System.out.print(ps);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                String pname= rs.getString("pname");
                double  price = rs.getDouble("price");
                String description= rs.getString("desciption");
                String status= rs.getString("status");
                String Category= rs.getString("category");
                String pimg= rs.getString("pimg");
                Product = new product(pid, pname,price,description, status,Category,pimg);
            }
        }
        catch(SQLException e){
            printSQLException(e);
        }
        return Product;
    }
    public  List<product>selectAllProduct(){
        List<product> Product = new ArrayList<>();
        try(Connection con= getConnection();
              PreparedStatement ps = con.prepareStatement(SELECT_ALL_PRODUCTS)){
            
            System.out.print(ps);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int pid = rs.getInt("pid");
                String pname= rs.getString("pname");
                double  price = rs.getDouble("price");
                String description= rs.getString("description");
                String status= rs.getString("status");
                String Category= rs.getString("category");
                String pimg= rs.getString("pimg");
                Product.add(new product(pid, pname,price,description,status,Category,pimg));
            }
        }
        catch(SQLException e){
            printSQLException(e);
        }
      return Product;
      
    }
  public boolean UpdateProducts(product Product){
      boolean rowUpdated = false;
      try(Connection con= getConnection();
            PreparedStatement ps = con.prepareStatement(UPDATE_PRODUCT_SQL)){
            ps.setInt(1, Product.getid());
            ps.setString(2, Product.getname());
            ps.setDouble(3, Product.getprice());
            System.out.print(ps);
            rowUpdated  = ps.executeUpdate()>0;
           
      }
      catch(SQLException e){
          
      }
      return rowUpdated;
  }
  public boolean deleteProduct(int pid) throws SQLException{
      boolean RowDeleted;
      try(Connection con= getConnection();
              PreparedStatement ps = con.prepareStatement(DELETE_PRODUCT_SQL)){
            ps.setInt(1, pid);
            
            System.out.print(ps);
            RowDeleted  = ps.executeUpdate()>0;
           
      }
      return RowDeleted;
  }

    private void printSQLException(SQLException ex) {
       for(Throwable e: ex){
           if(e instanceof SQLException){
               e.printStackTrace(System.err);
               System.err.println("SQLState:" +((SQLException) e).getSQLState());
               System.err.println("Error Code:" +((SQLException) e).getErrorCode());
               System.err.println("Message:"+ e.getMessage());
               Throwable t= ex.getCause();
               while(t != null){
                   System.out.println("Cause:" +t);
                   t= t.getCause();
               }
               
           }
       }
        
    }
    public static int delete(int pid){
       int status=0;
       Newproduct p = new Newproduct();
       
       p.setpid(pid);
       try{
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?","root","");
          PreparedStatement ps = con.prepareStatement("delete from orders where id=?");
          ps.setInt(1, p.getpid());
          status = ps.executeUpdate();
       }
       catch(ClassNotFoundException | SQLException e){
           e.printStackTrace();
       }
      return status;
    }
    
}
 /*   
 public productDao(Connection con)
 {
     
     this.con = con;
 }
protected Connection getConnection() throws ClassNotFoundException{
    
  
      return con;
    
  
}

 public   product padd( String pname, String pid, String price) throws ClassNotFoundException{
    product padd = null;
    try{
            Class.forName("com.jdbc.cj.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","","");
            String sql="insert into products "+"(pname, pid,price) values "+"(?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, pid);
             pst.setString(2, pid);
             pst.setString(3, price);
             pst.executeUpdate();
        
        query = " select * from product where  pname=? and id=? and price=?";
        pst = this.con.prepareStatement(query);
        
        pst.setString(1, pname);
        pst.setString(2, pid);
        pst.setString(3, price);
        rs = pst.executeQuery();
        if(rs.next()){
           padd = new product();
            
            padd.setname(rs.getString("pname"));
            padd.setid(rs.getInt("id"));
            padd.setprice(rs.getString("price"));
        }
    }
    catch(SQLException e){
        e.printStackTrace();
        System.out.print(e.getMessage());
    }
        return padd;      
 }
}
*/