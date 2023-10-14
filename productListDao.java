package productList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class productListDao {
    
  
    private final String dburl = "jdbc:mysql://localhost:3306/shop?";
    private final String dbuname = "root";
    private final String dbpass = "";
    private final String dbdriver = "com.mysql.cj.jdbc.Driver";
    
    public void loadDriver(String dbDriver) throws ClassNotFoundException{
       Class.forName(dbdriver);
    }
    
    
    
    public Connection getConnection(){
        Connection con =null;
          

try{
    
  con = DriverManager.getConnection(dburl, dbuname, dbpass);  
}
catch(SQLException e){
}
return con;
    }
    public String insert(product products) throws ClassNotFoundException{
        loadDriver(dbdriver);
        Connection con = getConnection();
        System.out.println("Connection is" +con);
        String sql = "insert into products values (?,?,?,?,?,?,?)";
        
        String result = "product added successfully";
        try{
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, products.getpid());
        ps.setString(2, products.getpname());
        ps.setString(3, products.getprice());
        ps.setString(4, products.getdescription());
        ps.setString(5, products.getstatus());
        ps.setString(6, products.getcategory());       
        ps.setString(7, products.getpimg());
                ps.executeUpdate();
        System.out.println("kwnn hutumi data kwenda kwny database?");
        } catch (SQLException e) {
            result = "product not  added";
            e.printStackTrace();
        }
     return result;   
    }

}

