package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class adminDao {

    private Connection con;
    private String query;
    private PreparedStatement ps;
    private ResultSet rs;

    public adminDao(Connection con) {
        this.con = con;
    }

    public adminlogin admin(String upass, String email) {
        adminlogin admin = null;
        try {
            query = " select * from adminlogin where  email=? and upass=? ";
            ps = this.con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, upass);

            rs = ps.executeQuery();

            if (rs.next()) {
                admin = new adminlogin();

                admin.setemail(rs.getString("email"));
                admin.setupass(rs.getString("upass"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        return admin;

    }
}
