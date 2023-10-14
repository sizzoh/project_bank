package customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
   
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
    
    public String insert(Member member) throws ClassNotFoundException{
        loadDriver(dbdriver);
        Connection con = getConnection();
        System.out.println("Connection is" +con);
        String sql = "insert into member values (?,?,?,?,?,?,?,?,?,?,?)";
        
        String result = "data entered successfully";
        try{
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, member.getname());
        ps.setString(2, member.getEmail());
        ps.setString(3, member.getPassword());
        ps.setString(4, member.getCountry());
        ps.setString(5, String.valueOf(member.getAge()));
        ps.setString(6, member.getConacts());
        
        ps.setString(7, member.getGender());
        ps.setString(8, member.getMarital());
        ps.setString(9, member.getBdate());
        ps.setString(10,member.getCity());
        ps.setString(11, member.getSecurityQuestion());
        
        ps.executeUpdate();
        
        
        } catch (SQLException e) {
            result = "data not entered";
            e.printStackTrace();
        }
     return result;   
    }

}