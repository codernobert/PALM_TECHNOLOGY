package com.palm.tech.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.palm.tech.domain.Order;
import com.palm.tech.domain.repository.OrderRepository;
import com.palm.tech.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	
	 @Autowired
	 private OrderRepository orderRepository;
	 
	 @Override
	 public Long saveOrder(Order order) {
	 return orderRepository.saveOrder(order);
	 }

}
