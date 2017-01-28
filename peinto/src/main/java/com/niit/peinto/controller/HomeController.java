package com.niit.peinto.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.peinto.dao.CartDAO;
import com.niit.peinto.dao.CartItemDAO;
import com.niit.peinto.dao.UserDAO;
import com.niit.peinto.model.Cart;
import com.niit.peinto.model.UserDetails;

/*
 * This controller is used to handle login, home,contact,product and about us functionality
 */

	@Controller
	public class HomeController {
		@Autowired
		UserDetails userDetails;
		@Autowired(required=true)
		UserDAO userDAO;
		@Autowired
		Cart cart;
		
		
		@RequestMapping("/index")
		public String index(){
			return "index";
		}
		/*
	     * contact method is used to land a user on contact page.
	     */
		@RequestMapping("/Contact")
		public String contact(){
			return "Contact";
		}
		@RequestMapping("/ccategories")
		public String ccategories(Model m)	
		{
		//Boolean userClcickedLogin = true
		m.addAttribute("ccategories","true");
			return "ccategories";
		}
		
		@RequestMapping("/success")
		public String success(Model m)	
		{
		//Boolean userClcickedLogin = true
		m.addAttribute("success","true");
			return "success";
		}
		
		@RequestMapping("/payment")
		public String payment(Model m)	
		{
		//Boolean userClcickedLogin = true
		m.addAttribute("payment","true");
			return "payment";
		}
		

		@RequestMapping("/billingAddress")
		public String billingAddress(Model m)	
		{
		//Boolean userClcickedLogin = true
		m.addAttribute("billingAddress","true");
			return "billingAddress";
		}
		
	/*	@RequestMapping("/categories")
		public String categories(){
			return "categories";
		}
		@RequestMapping("/category")
		public String category(){
			return "category";
		}*/
		/*
	     * about method is used to land a user on about us page.
	     */
		@RequestMapping("/Aboutus")
		public String Aboutus(){
			return "Aboutus";
		}
		@RequestMapping("/Productitem")
		public String productitem(){
			return "Productitem";
		}
		@RequestMapping("/thumbnail")
		public String thumbnail(){
			return "thumbnail";
		}
		@RequestMapping("/video")
		public String video(){
			return "video";
		}
		
		/*
	     * login method is used to handle user login related functionality
	     */
		@RequestMapping("/Login")
		public ModelAndView Login()
		{
			System.out.println("login page");
			ModelAndView mv=new ModelAndView("Login");
			mv.addObject("userDetails",userDetails);
			return mv;
		}
		/*
	     * Register method is used to handle user details  related functionality
	     */
		@RequestMapping("/Register")
		public ModelAndView registerhere()
		{
			ModelAndView mv = new ModelAndView("Register");
			mv.addObject("userDetails", userDetails);
		
			return mv;
		}
		@RequestMapping(value="Success",method = RequestMethod.POST)
		public ModelAndView registerUser(@ModelAttribute UserDetails userDetails)
		{
			ModelAndView mv;
			String msg;
			msg="You have registered successfully.Please log in to continue";
			userDAO.save(userDetails);
		  
			mv= new ModelAndView("/Login");
			mv.addObject("msg",msg);
			return mv;
	}

		@RequestMapping(value="/categoryDropdown/productDisplay/Aboutus")
		public String aboutus2back()
		{
			return "redirect:/Aboutus";
		}
		
		@RequestMapping(value="/categoryDropdown/Aboutus")
		public String Aboutusback()
		{
			return "redirect:/Aboutus";
		}
		
		@RequestMapping(value="/categoryDropdown/productDisplay/Contact")
		public String contact2back()
		{
			return "redirect:/Contact";
		}
		
		@RequestMapping(value="/categoryDropdown/Contact")
		public String contactback()
		{
			return "redirect:/Contact";
		}  
		
		     
	}

