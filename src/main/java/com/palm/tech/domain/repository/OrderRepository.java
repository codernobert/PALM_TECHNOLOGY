package com.palm.tech.domain.repository;

import com.palm.tech.domain.Order;

public interface OrderRepository {

	long saveOrder(Order order);
	
}
