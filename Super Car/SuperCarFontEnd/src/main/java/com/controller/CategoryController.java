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
import com.daoImpl.CategoryDaoImpl;
import com.model.Category;
import com.model.Product;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("categoryList", categoryDaoImpl.retrieve());
	}
	
	@RequestMapping (value = "/Man Category", method = RequestMethod.GET)
	public ModelAndView getPageCategory() {
		ModelAndView view = new ModelAndView ("Man Category");
		return view;
	}
	
	@RequestMapping (value = "/savecategory", method = RequestMethod.POST)
	public ModelAndView savecategory (@RequestParam("CategoryID") int CategoryID, @RequestParam("CategoryName") String CategoryName)
	{
		ModelAndView view = new ModelAndView();
		Category cat = new Category();
		cat.setCategoryID(CategoryID);
		cat.setCategoryName(CategoryName);
		categoryDaoImpl.insertCategory(cat);
		view.setViewName("Man Category List");
		return view;
	}
	
	@RequestMapping (value = "/Man Category List", method = RequestMethod.GET)
	public ModelAndView getPageCategory_List() {
		ModelAndView view = new ModelAndView ();
		view.addObject("categoryList", categoryDaoImpl.retrieve());
		view.setViewName("Man Category List");
		return view;
	}
	
	@RequestMapping ("/updateCategory")
	public ModelAndView updatecategory(@RequestParam("categoryID") int CategoryID)
	{
		Category c = categoryDaoImpl.findById(CategoryID);
		 ModelAndView view = new ModelAndView();
		 view.addObject("cat",c);
		 view.addObject("catList", categoryDaoImpl.retrieve());
		 view.setViewName("Update");
		 return view;
	}
	
	@RequestMapping (value = "/categoryupdate", method = RequestMethod.POST)
	public ModelAndView editcategory(HttpServletRequest req,@RequestParam("CategoryName") String CategoryName)
	{
		ModelAndView view = new ModelAndView();
		Category cat1 = new Category();
		String categoryID = req.getParameter("CategoryID");
		String catname = req.getParameter("CategoryName");
		cat1.setCategoryID(Integer.parseInt(categoryID));
		cat1.setCategoryName(catname);
		categoryDaoImpl.insertCategory(cat1);
		view.setViewName("redirect:/Man Category List?update");
		return view;
	}
	
	@RequestMapping ("/deleteCategory/{categoryID}")
	public String delete(@PathVariable("categoryID") int CategoryID)
	{
		categoryDaoImpl.deleteCategory(CategoryID);
		return "redirect:/Man Category List?del";
	}
}
