package com.palm.tech.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.palm.tech.domain.CartItem;
import com.palm.tech.service.ProductService;

public class CartItemMapper implements RowMapper<CartItem>{

	private ProductService productService;
	 public CartItemMapper(ProductService
	 productService) {
	 this.productService = productService;
	 }
	 
	 @Override
	 public CartItem mapRow(ResultSet rs, int rowNum)
	 throws SQLException {
	 CartItem cartItem = new
	 CartItem(rs.getString("ID"));
	 cartItem.setProduct(productService.getProductById
	 (rs.getString("PRODUCT_ID")));
	 cartItem.setQuantity(rs.getInt("QUANTITY"));
	 return cartItem;
	 }
}
