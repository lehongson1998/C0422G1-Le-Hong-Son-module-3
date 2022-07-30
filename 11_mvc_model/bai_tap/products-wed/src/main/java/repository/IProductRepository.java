package repository;

import model.Products;
import unit.ProductNotFoundException;

import java.util.List;

public interface IProductRepository {
    List<Products> findAll();
    void save(Products products);
    Products findById(int id);
    void update(int id, String name, double price, String produce, String image);
    void remove(int id);
    List<Products> findByNameProduct(String name);
}
