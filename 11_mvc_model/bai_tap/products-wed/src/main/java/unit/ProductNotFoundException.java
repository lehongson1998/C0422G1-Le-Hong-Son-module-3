package unit;

public class ProductNotFoundException extends Exception{
    String message;
    public ProductNotFoundException(String message){
        super(message);
    }
}
