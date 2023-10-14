
package products;

public class product {
   private String pname;
    private int pid;
    private double price;
    private String category;
    private String description;
    private String status;
    private String pimg;
        public product(){
        super();
    }
    public product(int pid, String pname, Double price,String category,String description,String status, String pimg){
       this.pid=pid;
       this.pname= pname;
       this.price= price;
       this.description=description;
       this.status= status;
       this.category=category;
       this.pimg= pimg;
    }

    public String getname(){
        return pname;
    }
    public void setname(String pname){
        this.pname= pname;
        
    }
    public int getid(){
        return pid;
    }
    public void setid(int pid ){
        this.pid= pid;
    }
    public double getprice(){
        return price;
    }
    public void setprice(double price){
        this.price= price;
    }
    public String  getdescription(){
        return description;
    }
    public void setdescription(String description){
        this.description= description;
    }
    public String  getstatus(){
        return status;
    }
    
    public void setprice(String status){
        this.status= status;
    }
    
    public String  getCategory(){
        return category;
    }
    
    public void setCategory(String  category){
        this.category= category;
    }
    public String getImage(){
        return pimg;
    }
    public void setImage(String pimg){
        this.pimg= pimg;
    }
    
 
}
