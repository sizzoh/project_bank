package admin;

public class admin {

    private String upass;
    private String email;

    public admin() {
        super();
    }

    public admin(String password, String email) {

    }

    public String getPassword() {
        return upass;
    }

    public void setPssword(String upass) {
        this.upass = upass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
