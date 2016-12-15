package com.atanu.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atanu.model.Product;
import com.atanu.service.impl.ProductServiceImpl;



@Controller
public class ProductController {

	@Autowired
	private ProductServiceImpl productServiceP;
	
	
	
	
	@ModelAttribute("product")
	public Product addpro(){
		return new Product();
	}
	
	@RequestMapping("/addproduct")
	public String addproduct(){
		return "product";
	}
	@RequestMapping(value="/add/product", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p,BindingResult result, HttpServletRequest request){
		/*if(p.getProductid() == 0){
			//new person, add it
			
			//p.setProductid(1);
			productServiceP.addProduct(p);
		}else{
			//existing person, call update
			this.productServiceP.updateProduct(p);
		}
		//productService.addProduct(p);
*/		
		 byte[] bytes;
		  if(!p.getImage().isEmpty())
	        {
			 
	            try
	            {
	            	bytes=p.getImage().getBytes();
	                this.productServiceP.addProduct(p);
	                System.out.println("Data Inserted");
	            
	           
	        
	                
					String path=request.getSession().getServletContext().getRealPath("/resources/images/"+p.getProductid()+".jpg");
					System.out.println("Path = "+path);
					System.out.println("File name = "+p.getImage().getOriginalFilename());
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
		
		
		return "redirect:/productlist";
	}
	
	@RequestMapping("/delete-user/{id}")
	public String removeUser(@PathVariable("id")int productId){
		this.productServiceP.removeProduct(productId);
		return "redirect:/productlist";
	}
}
