package com.palm.tech.domain.repository;

import java.util.List;

import com.palm.tech.domain.Product;

public interface ProductRepository {

	void addProduct(Product product);
	
	void updateStock(String productId, long noOfUnits);
	
	List <Product> getAllProducts();
	
	List<Product> getProductsByCategory(String category);
	
	Product getProductById(String productID);
}
