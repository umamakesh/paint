package com.niit.ShoppingCartBackEnd;

import org.springframework.stereotype.Component;

@Component
public class Category {
	private String ID;
	private String Name;
	private String Description;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
	
	

}
