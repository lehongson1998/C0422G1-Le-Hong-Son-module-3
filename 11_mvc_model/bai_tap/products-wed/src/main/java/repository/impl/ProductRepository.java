package repository.impl;

import model.Products;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ProductRepository implements IProductRepository {
    private static List<Products> productsList = new ArrayList<>();
    private final static String IPHONE_13_PRM = "image/ip13prm.jpg" ;
    private final static String IPHONE_12_PRM = "image/ip12prm.jpg" ;
    private final static String IPHONE_11_PRM = "image/ip11prm.jpg" ;
    private final static String IPHONE_XSM = "image/ipxsm.jpg" ;
    private final static String GALAXY_NOTE_10 = "image/galaxynote10.jpg" ;
    private final static String GALAXY_S10 = "image/galaxys10.jpg" ;
    private final static String GALAXY_S20 = "image/galaxys20.jpg" ;
    static {
        productsList.add(new Products(1, "Iphone 13 promax", 1600, "Apple", IPHONE_13_PRM));
        productsList.add(new Products(2, "Iphone 12 promax", 1200, "Apple", IPHONE_12_PRM));
        productsList.add(new Products(3, "Iphone 11 promax", 1000, "Apple", IPHONE_11_PRM));
        productsList.add(new Products(4, "Iphone xs max", 600, "Apple", IPHONE_XSM));
        productsList.add(new Products(5, "Galaxy note 10", 800, "Samsung", GALAXY_NOTE_10));
        productsList.add(new Products(6, "Galaxy s10", 500, "Samsung", GALAXY_S10));
        productsList.add(new Products(7, "Galaxy s20 ultra", 1500, "Samsung", GALAXY_S20));
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
                if (name != ""){
                    productsList.get(i).setName(name);
                }
                else {
                    productsList.get(i).setName(productsList.get(i).getName());
                }
                if (price > 0){
                    productsList.get(i).setPrice(price);
                }
                else {
                    productsList.get(i).setPrice(productsList.get(i).getPrice());
                }
                if (produce != ""){
                    productsList.get(i).setProduce(produce);
                }
                else {
                    productsList.get(i).setProduce(productsList.get(i).getProduce());
                }
                if (image != ""){
                    productsList.get(i).setImage(image);
                }
                else {
                    productsList.get(i).setImage(productsList.get(i).getImage());
                }
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
    public List<Products> findByNameProduct(String name) {
        List<Products> productsListSearch = new ArrayList<>();
        for (int i = 0; i < productsList.size(); i++) {
            if (productsList.get(i).getName().toLowerCase().contains(name.toLowerCase())){
                productsListSearch.add(productsList.get(i));
            }
        }
        return productsListSearch;
    }
}
