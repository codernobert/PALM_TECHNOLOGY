package com.palm.tech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.palm.tech.domain.User;
import com.palm.tech.service.LoginService;

@Controller
@RequestMapping(value = "/customerLogin")
public class UserLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/customerLogin")
	public String welcome2bn(Model model) {
	model.addAttribute("greeting", "Welcome to Palm Store!");
	model.addAttribute("tagline", "The one and only amazing tech store");
	return "customerLogin";
	}
	
	@RequestMapping(value = "/customerLogin", method = RequestMethod.POST)
	public ModelAndView customer12Login(@RequestParam("email") String email, @RequestParam("password") String password) {

		ModelAndView mv = new ModelAndView();
        
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		String name = loginService.loginUser(user);

		if (name != null) {
			mv.addObject("msg", "Welcome " + name + ", You have successfully logged in.");
			mv.setViewName("/products");

		} else {

			mv.addObject("msg", "Invalid user id or password.");
			mv.setViewName("customerLogin");
		}

		return mv;

	}


	
}
