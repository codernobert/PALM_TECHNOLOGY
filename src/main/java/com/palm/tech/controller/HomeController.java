package com.palm.tech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
@RequestMapping("/")
public String welcome(Model model) {
model.addAttribute("greeting", "Welcome to Palm Store!");
model.addAttribute("tagline", "The one and only amazing tech store");
return "welcome";
}

@RequestMapping("/welcome")
public String welcome2(Model model) {
model.addAttribute("greeting", "Welcome to Palm Store!");
model.addAttribute("tagline", "The one and only amazing tech store");
return "welcome";
}

@RequestMapping("/jsPrac")
public String jsPrac22(Model model) {
return "jsPrac";
}



}
