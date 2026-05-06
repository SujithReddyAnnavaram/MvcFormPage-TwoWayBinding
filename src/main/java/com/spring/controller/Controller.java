package com.spring.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Data;

@org.springframework.stereotype.Controller
@RequestMapping("/DoubleBi")
public class Controller {
	
	@GetMapping("/Reg")
	public String disp(@ModelAttribute("data")Data data) {
		return "Intro";
	}
	
	@PostMapping("/Registration")
	public String disp1(@ModelAttribute("data")Data data,Model model) {
	model.addAttribute("data", data);
		return "Feedback";
	}

}
