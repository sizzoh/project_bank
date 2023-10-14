package customer.model.dao;

import customer.model.userlogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDao {

    private Connection con;
    private String query;
    private PreparedStatement ps;
    private ResultSet rs;

    public userDao(Connection con) {
        this.con = con;
    }

    public userlogin user(String password, String email) {
        userlogin user = null;
        try {
            query = " select * from member where  email=? and password=? ";
            ps = this.con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {
                user = new userlogin();

                user.setEmail(rs.getString("email"));
                user.setpassword(rs.getString("password"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        return user;

    }
}
