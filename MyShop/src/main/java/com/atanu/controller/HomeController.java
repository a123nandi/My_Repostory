package com.atanu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atanu.model.Product;
import com.atanu.model.User;
import com.atanu.service.impl.ProductServiceImpl;
import com.atanu.service.impl.UserServiceImpl;

@Controller
public class HomeController {

	/*@RequestMapping("/")
	private String loadIndex(){
		return "index";
	}*/
	
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private ProductServiceImpl productService;
	
	@RequestMapping("/")
	private String adminIndex(){
		return "adminIndex";
	}
	
	@RequestMapping(value="/userlist",method = RequestMethod.GET)
	public String listUser(Model model){
		model.addAttribute("user",new User());
		System.out.println("inside controller");
		model.addAttribute("listUsers",userService.listUser());
		return "userslist";
	}
	
	
	@RequestMapping(value="/productlist", method=RequestMethod.GET)
	public String listProduct(Model model){
		
		model.addAttribute("product",new Product());
		System.out.println("inside controller");
		model.addAttribute("listProduct",this.productService.listProduct());
		return "productslist";
	}
	
	/*@ModelAttribute("product")
	public Product addproduct(){
		return new Product();
	}*/
	
	
	/*@RequestMapping("/addPro")
	public String addProduct(){
		return "product";
	}*/
}
