package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class report {

    private static Connection con = null;
    public static Connection getConnection;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (con == null) {
            Class.forName("com.jdbc.cj.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?", "root", "");
            System.out.print("connected");
        }
        return con;
    }
}
