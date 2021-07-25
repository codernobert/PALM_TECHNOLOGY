package com.palm.tech.domain.repository.impl;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.palm.tech.domain.User;
import com.palm.tech.domain.repository.UserDao;

@Repository
public class UserDaoImpl implements UserDao{

	private JdbcTemplate jdbcTemplate;

	public UserDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}
	
	@Override
	public String loginUser(User user) {
		
            String sql = "SELECT email FROM customer_login WHERE email=? AND password=?";
		
		try {

			String username = jdbcTemplate.queryForObject(sql, new Object[] {
					user.getEmail(), user.getPassword() }, String.class);

			return username;
			
		} catch (Exception e) {
			return null;
		}

	}
	
}
