package repository.impl;

import model.Products;
import repository.IProductRepository;
import unit.ProductNotFoundException;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Products> productsList = new ArrayList<>();
    private final static String IPHONE_13_PRM = "1" ;
    private final static String IPHONE_12_PRM = "2" ;
    private final static String IPHONE_11_PRM = "3" ;
    private final static String IPHONE_XSM = "4" ;
    private final static String GALAXY_NOTE_10 = "5" ;
    private final static String GALAXY_S10 = "6" ;
    private final static String GALAXY_S20 = "6" ;
    static {
        productsList.add(new Products(1, "iphone 13 promax", 1600, "Apple", IPHONE_13_PRM));
        productsList.add(new Products(2, "iphone 12 promax", 1200, "Apple", IPHONE_12_PRM));
        productsList.add(new Products(3, "iphone 11 promax", 1000, "Apple", IPHONE_11_PRM));
        productsList.add(new Products(4, "iphone xs max", 600, "Apple", IPHONE_XSM));
        productsList.add(new Products(5, "galaxy note 10", 800, "Samsung", GALAXY_NOTE_10));
        productsList.add(new Products(6, "galaxy s10", 500, "Samsung", GALAXY_S10));
        productsList.add(new Products(7, "galaxy s20 ultra", 1500, "Samsung", GALAXY_S20));
    }

    @Override
    public List<Products> findAll() {
        return productsList;
    }

    @Override
    public void save(Products products) {
        productsList.add(products);
    }

    @Override
    public Products findById(int id) {
        for (Products p: productsList) {
            if(id == p.getId()){
                return p;
            }
        }
        return null;
    }

    @Override
    public void update(int id, String name, double price, String produce, String image) {
        for (int i = 0; i < productsList.size(); i++) {
            if (id == productsList.get(i).getId()){
                productsList.get(i).setName(name);
                productsList.get(i).setPrice(price);
                productsList.get(i).setProduce(produce);
                productsList.get(i).setImage(image);
            }
        }
    }

    @Override
    public void remove(int id) {
        for (int i = 0; i < productsList.size(); i++) {
            if (id == productsList.get(i).getId()){
                productsList.remove(productsList.get(i));
            }
        }
    }

    @Override
    public Products findByNameProduct(String name) {
        boolean flag = true;
        Products products = null;
        for (int i = 0; i < productsList.size(); i++) {
            if (name.equalsIgnoreCase(productsList.get(i).getName())){
                flag = false;
                products = productsList.get(i);
            }
        }
        if (!flag){
           return products;
        }
        else {
            return null;
        }
    }
}
