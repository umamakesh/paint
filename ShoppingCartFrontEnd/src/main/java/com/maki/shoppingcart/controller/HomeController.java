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
	@RequestMapping("/Register")
	public String Register(Model m)
	{
		//Boolean userClcickedLogin = true
		m.addAttribute("userClickedregister","true");
		m.addAttribute("register msg","Succcessfully registered");
		return "login";
		
	}
	@RequestMapping("/home")
	public String home(Model m)
	{
		m.addAttribute("Carousel","true");
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
			else if (id.equals("admin")  && pwd.equals("admin"))
			{
				model.addAttribute("successadmin", "login as admin ");
				return "index";
			}
			else
			{
				model.addAttribute("errorMessage", "Invalid Credentials ");
				return "index";
			}
			}
	@RequestMapping("/login")
	public String login(Model model)	
	{
	//Boolean userClcickedLogin = true
	model.addAttribute("userClickedLogin","true");
		return "login";
	}
	
	@RequestMapping("/register")
	public String register(Model model)
	{
		//Boolean userClcickedLogin = true
		model.addAttribute("userClickedRegister","true");
		return "register";
	}
	@RequestMapping("/suppliers")
	public String supplier(Model model) {
		model.addAttribute("supplier","true");
		return "Admin";
	}
	@RequestMapping("/product")
	public String product(Model model) {
		model.addAttribute("product","true");
		return "Admin";
	}
	@RequestMapping("/category")
	public String category(Model model) {
		model.addAttribute("category","true");
		return "Admin";
	}
	@RequestMapping("/AboutUs")
	public String AboutUs(Model m)	
	{
	//Boolean userClcickedLogin = true
	m.addAttribute("AboutUs","true");
		return "AboutUs";
	}
	@RequestMapping("/ContactUs")
	public String ContactUs(Model s)	
	{
	//Boolean userClcickedLogin = true
	s.addAttribute("userClickedcontactus","true");
		return "contactus";
	}
}