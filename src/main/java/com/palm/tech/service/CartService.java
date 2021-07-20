package com.palm.tech.service;

import com.palm.tech.domain.Cart;
import com.palm.tech.dto.CartDto;

public interface CartService {

	 void create(CartDto cartDto);
	 Cart read(String cartId);
	 void update(String cartId, CartDto cartDto);
	 void delete(String id);
	 void addItem(String cartId, String productId);
	 void removeItem(String cartId, String productId);
	 Cart validate(String cartId);
	 void clearCart(String cartId);
	 
}
