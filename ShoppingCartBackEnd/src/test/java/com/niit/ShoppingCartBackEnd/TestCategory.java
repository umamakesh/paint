package com.niit.ShoppingCartBackEnd;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestCategory {
	
	public static void main (String[] args)
	{
		AnnotationConfigApplicationContext Context = new AnnotationConfigApplicationContext();
		Context.scan("com.niit");
		Context.refresh();
		Context.getBean("product");
		System.out.println("The Category Instance is Created Sucessful");
	}

}
