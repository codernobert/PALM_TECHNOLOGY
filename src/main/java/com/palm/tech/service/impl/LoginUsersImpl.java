package com.palm.tech.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.palm.tech.domain.User;
import com.palm.tech.domain.repository.UserDao;
import com.palm.tech.service.LoginService;

@Service
public class LoginUsersImpl implements LoginService{

	@Autowired
	 private UserDao userDao;
	
	@Override
	public String loginUser(User user) {
		return userDao.loginUser(user);
	}

}
