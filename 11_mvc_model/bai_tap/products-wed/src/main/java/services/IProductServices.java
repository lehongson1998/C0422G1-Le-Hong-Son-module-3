package services;

import model.Products;
import unit.ProductNotFoundException;

import java.util.List;

public interface IProductServices {
    List<Products> findAll();
    void save(Products products);
    Products findById(int id);
    void update(int id, String name, double price, String produce, String image);
    Products remove(int id);
    Products findByNameProduct(String name);
}
