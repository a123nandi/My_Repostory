package com.atanu.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.atanu.model.User;
import com.atanu.service.impl.UserServiceImpl;

@Controller
public class UserController {

	
	@Autowired
	private UserServiceImpl userServiceA;
	
	/*@RequestMapping(value="/userlist",method = RequestMethod.GET)
	public String listUser(Model model){
		model.addAttribute("user",new User());
		System.out.println("inside controller");
		model.addAttribute("listUsers",userService.listUser());
		return "userslist";
	}*/
	
	@ModelAttribute("user")
	public User createUser()
	{
		
		return new User();
	}
	@RequestMapping("/registers")
	public String register(){
		return "register";
	}
	
	@RequestMapping(value="/add/user", method=RequestMethod.POST)
	public String adduser(@ModelAttribute("user") User u,BindingResult result, HttpServletRequest request)
	{
		/*if(u.getId()==0){
			//u.setUser_role("ROLE_USER");
			userServiceA.addUser(u);
			
		}else{
			//u.setUser_role("ROLE_USER");
			this.userServiceA.updateUser(u);
		}*/
		
		
		  byte[] bytes;
		  if(!u.getImage().isEmpty())
	        {
			 
	            try
	            {
	            	bytes=u.getImage().getBytes();
	            	
	            	
	            	userServiceA.addUser(u);
	                System.out.println("Data Inserted");
	            
	           
	        
	                
					String path=request.getSession().getServletContext().getRealPath("/resources/images/"+u.getId()+".jpg");
					System.out.println("Path = "+path);
					System.out.println("File name = "+u.getImage().getOriginalFilename());
					//System.out.println("file name = "+p.getImage());
					File f=new File(path);
					BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
					bs.write(bytes);
					bs.close();
					System.out.println("Image uploaded");
	            }
				catch(Exception ex)
	            {
	                System.out.println(ex.getMessage());
	            }
	        }
		
		return "redirect:/userlist";
	}
	
	
	@RequestMapping(value = { "/edit-user/{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable("id") int id, ModelMap model) {
		User user = userServiceA.getUserById(id);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		return "register";
	}
	
	
	@RequestMapping(value={"/edit-user/{id}"},method=RequestMethod.POST)
	public String editUser(@PathVariable("id")int id,Model model, User user,BindingResult result){
		if(result.hasErrors()){
			return "register";
		}
		userServiceA.updateUser(user);
		model.addAttribute("user",this.userServiceA.getUserById(id));
		model.addAttribute("listUsers", this.userServiceA.listUser());
		return "userslist";
	}
	
	@RequestMapping("/delete-user/{id}")
	public String removeUser(@PathVariable("id")int id){
		this.userServiceA.removeUser(id);
		return "redirect:/userlist";
	}
}
