
package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminDaoo {
   
    private final String dburl = "jdbc:mysql://localhost:3306/shop";
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
    public String insert(admin login) throws ClassNotFoundException{
        loadDriver(dbdriver);
        Connection con = getConnection();
        System.out.println("Connection is" +con);
        String sql = "insert into shop.adminlogin values (?,?)";
        
        String result = "data entered successfully";
        try{
        PreparedStatement ps = con.prepareStatement(sql);
        
        ps.setString(1, login.getEmail());
        ps.setString(2, login.getPassword());
        
        ps.executeUpdate();
        
        } catch (SQLException e) {
            result = "data not entered";
            
        }
     return result;   
    }

}
