package com.maki.ShoppingCart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("/Login")
	public String login(Model model)	
	{
		//String name="NIIT";
		//${name} -Spring EL  - Expreeon Language
		//Boolean userClcickedLogin = true
	model.addAttribute("name","NIIT");
		return "login";
	}
	
	@RequestMapping("/Register")
	public String register()
	{
		return "register";
	}
}
