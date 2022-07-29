package model;

public class Products {
    private int id;
    private String name;
    private double price;
    private String produce;
    private String image;

    public Products(int id, String name, double price, String produce, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.produce = produce;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getProduce() {
        return produce;
    }

    public void setProduce(String produce) {
        this.produce = produce;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
