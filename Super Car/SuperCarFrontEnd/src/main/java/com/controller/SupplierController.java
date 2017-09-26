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

import com.dao.SupplierDao;
import com.daoImpl.SupplierDaoImpl;
import com.model.Supplier;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierDao supplierDao;
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("supplierList", supplierDao.retrieve());
	}
	
	@RequestMapping (value = "/SupplierForm", method = RequestMethod.GET)
	public ModelAndView getPageSupplier() {
		ModelAndView view = new ModelAndView ("SupplierForm");
		return view;
	}
	
	@RequestMapping (value = "/savesupplier", method = RequestMethod.POST)
	public ModelAndView savesupplier (@RequestParam(name="SupplierID") int SupplierID, @RequestParam(name="SupplierName") String SupplierName)
	{
		ModelAndView view = new ModelAndView();
		Supplier sup = new Supplier();
		sup.setSupplierID(SupplierID);
		sup.setSupplierName(SupplierName);
		supplierDao.insertSupplier(sup);
		view.setViewName("Manage Supplier List");
		return view;
	}
	
	@RequestMapping (value = "/Manage Supplier List", method = RequestMethod.GET)
	public ModelAndView getPageSupplier_List() {
		ModelAndView view = new ModelAndView ("Manage Supplier List");
		view.addObject("supplierList", supplierDao.retrieve());
		view.setViewName("Manage Supplier List");
		return view;
	}
	
	@RequestMapping ("/updateSupplier")
	public ModelAndView updatesupplier(@RequestParam("supplierID") int SupplierID)
	{
		 Supplier s = supplierDao.findById(SupplierID);
		 ModelAndView view = new ModelAndView();
		 view.addObject("sup",s);
		 view.addObject("supList", supplierDao.retrieve());
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
		supplierDao.insertSupplier(sup1);
		view.setViewName("redirect:/Manage Supplier List?update");
		return view;
	}
	
	@RequestMapping ("/deleteSupplier/{supplierID}")
	public String delete(@PathVariable("supplierID") int SupplierID)
	{
		supplierDao.deleteSupplier(SupplierID);
		return "redirect:/Manage Supplier List?del";
	}
}
