package com.palm.tech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SuppressWarnings("deprecation")
@SpringBootApplication
public class PalmTechApplication extends
WebMvcConfigurerAdapter{

	public static void main(String[] args) {
		SpringApplication.run(PalmTechApplication.class, args);
	}
	

}
