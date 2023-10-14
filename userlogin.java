
package customer.model;

public class userlogin {
    
   
    
    private String email;
    private String password;
    
    
    public userlogin(){
        super();
    }
    public userlogin(String password, String email ){
        
   
    }
    public String getPassword(){
        return password;
    }
    public void setpassword(String password ){
        this.password= password;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email= email;
    }
    
    
    
}
