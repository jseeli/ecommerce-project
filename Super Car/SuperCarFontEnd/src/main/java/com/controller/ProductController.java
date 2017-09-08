package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@RequestMapping(value = "/Product", method = RequestMethod.GET)
	public ModelAndView getproduct() {
		ModelAndView view = new ModelAndView("Product");
		return view;
	}
	
	@RequestMapping (value = "/Man Product", method = RequestMethod.GET)
	public ModelAndView getPageProduct() {
		ModelAndView view = new ModelAndView ("Man Product");
		
		return view;
	}
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("categoryList", categoryDaoImpl.retrieve());
		a.addAttribute("supplierList", supplierDaoImpl.retrieve());
		a.addAttribute("productList", productDaoImpl.retrieve());
	}
	
	@RequestMapping (value = "/saveproduct", method = RequestMethod.POST)
	public ModelAndView getsaveproduct (HttpServletRequest request, @RequestParam(name="Productimage") MultipartFile Productimage, @RequestParam(name="ProductName") String ProductName, @RequestParam(name="Price") float Price, @RequestParam(name="Description") String Description, @RequestParam(name="Stock") int Stock, @RequestParam(name="ProductImage") String ProductImage)
	{
		ModelAndView view = new ModelAndView();
		Product pro = new Product();
		pro.setProductName(request.getParameter("ProductName"));
		pro.setPrice(Float.parseFloat(request.getParameter("Price")));
		pro.setDescription(request.getParameter("Description"));
		pro.setStock(Integer.parseInt(request.getParameter("Stock")));
		pro.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pcategory"))));
		pro.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("psupplier"))));
		
		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filename = Productimage.getOriginalFilename();
		pro.setProductImage(filename);
		productDaoImpl.insertProduct(pro);
		view.setViewName("Man Product");
		System.out.println("FilePath "+filepath);
		System.out.println("FileName "+filename);
		
		try
		{
			byte imagebyte[] = Productimage.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		
		catch (IOException e)
		{
			e.printStackTrace();
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return view;
	}
	
	@RequestMapping (value = "/Man Product List")
	public ModelAndView Product_List() {
		ModelAndView view = new ModelAndView ("Man Product List");
		view.addObject("productList", productDaoImpl.retrieve());
		view.setViewName("Man Product List");
		return view;
	}
	
	@RequestMapping ("/updateProduct")
	public ModelAndView updateproduct(@RequestParam("productID") int ProductID)
	{
		Product p = productDaoImpl.findById(ProductID);
		
		 ModelAndView view = new ModelAndView();
		 view.addObject("pro",p);
		 view.addObject("catList", categoryDaoImpl.retrieve());
		 view.addObject("supList", supplierDaoImpl.retrieve());
		 view.setViewName("Update");
		 return view;
	}
	
	@RequestMapping (value = "/productupdate", method = RequestMethod.POST)
	public ModelAndView editproduct(HttpServletRequest req,@RequestParam("Productimage") MultipartFile Productimage)
	{
		ModelAndView view = new ModelAndView();
		Product Pro1 = new Product();
		String productID = req.getParameter("ProductID");
		String proname = req.getParameter("ProductName");
		String desc = req.getParameter("Description");
		String prostock = req.getParameter("Stock");
		String proprice = req.getParameter("Price");
		String procat = req.getParameter("pcategory");
		String prosup = req.getParameter("psupplier");
		Pro1.setProductID(Integer.parseInt(productID));
		Pro1.setProductName(proname);
		Pro1.setDescription(desc);
		Pro1.setStock(Integer.parseInt(prostock));
		Pro1.setPrice(Float.parseFloat(proprice));
		Pro1.setCategory(categoryDaoImpl.findById(Integer.parseInt(procat)));
		Pro1.setSupplier(supplierDaoImpl.findById(Integer.parseInt(prosup)));
		
		String filepath = req.getSession().getServletContext().getRealPath("/");
		String filename = Productimage.getOriginalFilename();
		Pro1.setProductImage(filename);
		productDaoImpl.insertProduct(Pro1);
		System.out.println("FilePath "+filepath);
		System.out.println("FileName "+filename);
		
		try
		{
			byte imagebyte[] = Productimage.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+filename));
			fos.write(imagebyte);
			fos.close();
		}
		
		catch (IOException e)
		{
			e.printStackTrace();
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		view.setViewName("redirect:/Man Product List?update");
		return view;
	}
	
	@RequestMapping ("/deleteProduct/{productID}")
	public String delete(@PathVariable("productID") int ProductID)
	{
		productDaoImpl.deleteProduct(ProductID);
		return "redirect:/Man Product List?del";
	}
	
	@RequestMapping (value = "/Update", method = RequestMethod.GET)
	public ModelAndView getPageUpdate() {
		ModelAndView view = new ModelAndView ("Update");
		
		return view;
	}
	
	@RequestMapping(value = "/Bugatti", method = RequestMethod.GET)
	public ModelAndView getBugatti() {
		ModelAndView view = new ModelAndView("Bugatti");
		return view;
	}
	
	@RequestMapping(value = "/Pagani", method = RequestMethod.GET)
	public ModelAndView getPagani() {
		ModelAndView view = new ModelAndView("Pagani");
		return view;
	}
	
	@RequestMapping(value = "/Lamborghini", method = RequestMethod.GET)
	public ModelAndView getLamborghini() {
		ModelAndView view = new ModelAndView("Lamborghini");
		return view;
	}
	
	@RequestMapping(value = "/Mercedes Benz", method = RequestMethod.GET)
	public ModelAndView getMercedesBenz() {
		ModelAndView view = new ModelAndView("Mercedes Benz");
		return view;
	}
}
