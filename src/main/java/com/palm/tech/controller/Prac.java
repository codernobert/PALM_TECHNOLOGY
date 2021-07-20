package com.palm.tech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pract")
public class Prac {

	@RequestMapping("/jsPrac22")
	public String jsPr(Model model) {
	return "/jsPrac22";
	}
	
}
