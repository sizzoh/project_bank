
package customer;


public class Member {
   
    private String name;
    private String password;
    private String confpwd;
    private String email;
    private int age;
    private String gender;
    private String contacts;
    private String Bdate;
    private String marital;
    private String country;
    private String city;
    private String securityQuestion;
    public Member(){
        super();
    }
    public Member(String name,String email, String password,String confpwd,  int age,String gender, String Bdate,String marital,String contacts,String country,String  city,String securityQuestion){
       this.name= name;
       this.password= password;
       this.confpwd = confpwd;
       this.email=email;
       this.age= age;
       this.gender= gender;
       this.contacts= contacts;
       this.Bdate= Bdate;
       this.marital=marital;
       this.country= country;
       this.city= city;
       this.securityQuestion=securityQuestion;
    }
    
    public String getname(){
        return name;
    }
    public void setname(String name){
        this.name= name;
        
    }
    public String getPassword(){
        return password;
    }
    public void setlastName(String password ){
        this.password= password;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email= email;
    }
    public String getCountry(){
        return country;
    }
    public void setCountry(String country){
        this.country= country;
    }
public int getAge(){
        return age;
    }
    public void setAge(int age){
        this.age= age;
    }
    public String getGender(){
        return gender;
    }
    public void setGendery(String gender){
        this.gender= gender;
    }
    public String getConacts(){
        return contacts;
    }
    public void setContact(String contacts){
        this.contacts= contacts;
    }
    public String getBdate(){
        return Bdate;
    }
    public void setBdate(String Bdate){
        this.Bdate= Bdate;
    }
    public String getMarital(){
        return marital;
    }
    public void setMarital(String marital){
        this.marital= marital;
    }
    public String getCity(){
        return city;
    }
    public void setCity(String city){
        this.city= city;
    }
    public String getSecurityQuestion(){
        return securityQuestion;
    }
    public void setsecurityQuestion(String securityQuestion){
        this.securityQuestion= securityQuestion;
    }
}