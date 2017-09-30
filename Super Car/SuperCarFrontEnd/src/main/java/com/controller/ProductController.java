package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SupplierDao supplierDao;
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("categoryList", categoryDao.retrieve());
		a.addAttribute("supplierList", supplierDao.retrieve());
		a.addAttribute("productList", productDao.retrieve());
	}
	
	@RequestMapping (value = "/Product", method = RequestMethod.GET)
	public ModelAndView getProduct() 
	{
		ModelAndView view = new ModelAndView ("Product");
		return view;
	}
		
	@RequestMapping(value="/Productdesc/{productID}")
	public String showProductDescription(@PathVariable("productID") int ProductID, Model p)
	{
		Product product1=productDao.findById(ProductID);
		p.addAttribute("proddesc",product1);
		return "Productdesc";
	}
	
	@RequestMapping (value = "/ProductForm", method = RequestMethod.GET)
	public ModelAndView getPageProduct() {
		ModelAndView view = new ModelAndView ("ProductForm");
		return view;
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
		pro.setCategory(categoryDao.findById(Integer.parseInt(request.getParameter("pcategory"))));
		pro.setSupplier(supplierDao.findById(Integer.parseInt(request.getParameter("psupplier"))));
		
		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filename = Productimage.getOriginalFilename();
		pro.setProductImage(filename);
		productDao.insertProduct(pro);
		view.setViewName("ProductForm");
		System.out.println("FilePath "+filepath);
		System.out.println("FileName "+filename);
		
		try
		{
			System.out.println("Getting Image from location.");
			byte imagebyte[] = Productimage.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+filename));
			System.out.println("Loading image.....................");
			fos.write(imagebyte);
			System.out.println("image is loading complete.");
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
	
	@RequestMapping (value = "/Manage Product List")
	public ModelAndView Product_List() {
		ModelAndView view = new ModelAndView ("Manage Product List");
		view.addObject("productList", productDao.retrieve());
		view.setViewName("Manage Product List");
		return view;
	}
	
	@RequestMapping ("/updateProduct")
	public ModelAndView updateproduct(@RequestParam("productID") int ProductID)
	{
		Product p = productDao.findById(ProductID);
		
		 ModelAndView view = new ModelAndView();
		 view.addObject("pro",p);
		 view.addObject("catList", categoryDao.retrieve());
		 view.addObject("supList", supplierDao.retrieve());
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
		Pro1.setCategory(categoryDao.findById(Integer.parseInt(procat)));
		Pro1.setSupplier(supplierDao.findById(Integer.parseInt(prosup)));
		
		String filepath = req.getSession().getServletContext().getRealPath("/");
		String filename = Productimage.getOriginalFilename();
		Pro1.setProductImage(filename);
		productDao.insertProduct(Pro1);
		System.out.println("FilePath "+filepath);
		System.out.println("FileName "+filename);
		
		try
		{
			System.out.println("Getting Image from location.");
			byte imagebyte[] = Productimage.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+filename));
			System.out.println("Loading image.....................");
			fos.write(imagebyte);
			System.out.println("image is loading complete.");
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
		
		view.setViewName("redirect:/Manage Product List?update");
		return view;
	}
	
	@RequestMapping ("/deleteProduct/{productID}")
	public String delete(@PathVariable("productID") int ProductID)
	{
		productDao.deleteProduct(ProductID);
		return "redirect:/Manage Product List?del";
	}
	
	/*@RequestMapping (value = "/Update", method = RequestMethod.GET)
	public ModelAndView getPageUpdate() {
		ModelAndView view = new ModelAndView ("Update");
		return view;
	}*/
}
