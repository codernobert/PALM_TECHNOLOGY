package com.palm.tech.domain.repository;

import com.palm.tech.domain.Cart;
import com.palm.tech.dto.CartDto;

public interface CartRepository {
 
	 void create(CartDto cartDto);
	 Cart read(String id);
	 void update(String id, CartDto cartDto);
	 void delete(String id);
	 void addItem(String cartId, String productId);
	 void removeItem(String cartId, String productId);
	 void clearCart(String cartId);
	 
}
