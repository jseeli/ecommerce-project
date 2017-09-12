package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.daoImpl.SupplierDaoImpl;
import com.model.Category;
import com.model.Supplier;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("supplierList", supplierDaoImpl.retrieve());
	}
	
	@RequestMapping (value = "/Man Supplier", method = RequestMethod.GET)
	public ModelAndView getPageSupplier() {
		ModelAndView view = new ModelAndView ("Man Supplier");
		return view;
	}
	
	@RequestMapping (value = "/savesupplier", method = RequestMethod.POST)
	public ModelAndView savesupplier (@RequestParam(name="SupplierID") int SupplierID, @RequestParam(name="SupplierName") String SupplierName)
	{
		ModelAndView view = new ModelAndView();
		Supplier sup = new Supplier();
		sup.setSupplierID(SupplierID);
		sup.setSupplierName(SupplierName);
		supplierDaoImpl.insertSupplier(sup);
		view.setViewName("Man Supplier List");
		return view;
	}
	
	@RequestMapping (value = "/Man Supplier List", method = RequestMethod.GET)
	public ModelAndView getPageSupplier_List() {
		ModelAndView view = new ModelAndView ("Man Supplier List");
		view.addObject("supplierList", supplierDaoImpl.retrieve());
		view.setViewName("Man Supplier List");
		return view;
	}
	
	@RequestMapping ("/updateSupplier")
	public ModelAndView updatesupplier(@RequestParam("supplierID") int SupplierID)
	{
		 Supplier s = supplierDaoImpl.findById(SupplierID);
		 ModelAndView view = new ModelAndView();
		 view.addObject("sup",s);
		 view.addObject("supList", supplierDaoImpl.retrieve());
		 view.setViewName("Update");
		 return view;
	}
	
	@RequestMapping (value = "/supplierupdate", method = RequestMethod.POST)
	public ModelAndView editsupplier(HttpServletRequest req,@RequestParam("SupplierName") String SupplierName)
	{
		ModelAndView view = new ModelAndView();
		Supplier sup1 = new Supplier();
		String supplierID = req.getParameter("SupplierID");
		String supname = req.getParameter("SupplierName");
		sup1.setSupplierID(Integer.parseInt(supplierID));
		sup1.setSupplierName(supname);
		supplierDaoImpl.insertSupplier(sup1);
		view.setViewName("redirect:/Man Supplier List?update");
		return view;
	}
	
	@RequestMapping ("/deleteSupplier/{supplierID}")
	public String delete(@PathVariable("supplierID") int SupplierID)
	{
		supplierDaoImpl.deleteSupplier(SupplierID);
		return "redirect:/Man Supplier List?del";
	}
}
