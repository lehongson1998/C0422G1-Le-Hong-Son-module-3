package services.impl;

import model.Products;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import services.IProductServices;
import unit.ProductNotFoundException;

import java.util.List;

public class ProductServices implements IProductServices {
    private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Products> findAll() {
       return productRepository.findAll();
    }

    @Override
    public void save(Products products) {
        productRepository.save(products);
    }

    @Override
    public Products findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(int id, String name, double price, String produce, String image) {
        productRepository.update(id, name, price, produce, image);
    }

    @Override
    public Products remove(int id) {
        productRepository.remove(id);
        return null;
    }

    @Override
    public List<Products> findByNameProduct(String name){
        return productRepository.findByNameProduct(name);
    }
}
