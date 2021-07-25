package com.palm.tech.service;

import java.util.List;

import com.palm.tech.domain.Product;

public interface ProductService {

    void addProduct(Product product);
	
	List <Product> getAllProducts();
	
	void updateAllStock();
	
	List<Product> getProductsByCategory(String category);
	
	Product getProductById(String productID);
}
