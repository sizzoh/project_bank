package admin;

public class adminlogin {

    private String upass;
    private String email;

    public adminlogin() {
        super();
    }

    public adminlogin(String upass, String email) {

    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;

    }

    public String getPassword() {
        return upass;
    }

    public void setupass(String upass) {
        this.upass = upass;
    }
}
