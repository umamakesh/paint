package com.maki.ShoppingCart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String gotohome()
	{
		return "index";
		
	}
	
	@RequestMapping("/validate")
	
	public String validate(@RequestParam(name="userID") String id, @RequestParam("password") String pwd,Model model)
			{
			//validate - hit the database to validate
			// NIIT
			
			if (id.equals("niit")  && pwd.equals("niit"))
			{
				 model.addAttribute("sucessMessage", "You sucessfully logged in");
				 return "index";
			}
			else
			{
				model.addAttribute("errorMessage", "Invalid Credentials ");
				return "index";
			}
			}
	@RequestMapping("/Login")
	public String login(Model model)	
	{
	//Boolean userClcickedLogin = true
	model.addAttribute("userClickedLogin","true");
		return "index";
	}
	
	@RequestMapping("/Register")
	public String register(Model model)
	{
		//Boolean userClcickedLogin = true
		model.addAttribute("userClickedRegister","true");
		return "index";
	}
}