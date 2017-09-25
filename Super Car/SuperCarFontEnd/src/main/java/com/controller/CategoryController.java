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

import com.dao.CategoryDao;
import com.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDao categoryDao;
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("categoryList", categoryDao.retrieve());
	}
	
	@RequestMapping (value = "/CategoryForm", method = RequestMethod.GET)
	public ModelAndView getPageCategory() {
		ModelAndView view = new ModelAndView ("CategoryForm");
		return view;
	}
	
	@RequestMapping (value = "/savecategory", method = RequestMethod.POST)
	public ModelAndView savecategory (@RequestParam("CategoryID") int CategoryID, @RequestParam("CategoryName") String CategoryName)
	{
		ModelAndView view = new ModelAndView();
		Category cat = new Category();
		cat.setCategoryID(CategoryID);
		cat.setCategoryName(CategoryName);
		categoryDao.insertCategory(cat);
		view.setViewName("Manage Category List");
		return view;
	}
	
	@RequestMapping (value = "/Manage Category List", method = RequestMethod.GET)
	public ModelAndView getPageCategory_List() {
		ModelAndView view = new ModelAndView ();
		view.addObject("categoryList", categoryDao.retrieve());
		view.setViewName("Manage Category List");
		return view;
	}
	
	@RequestMapping ("/updateCategory")
	public ModelAndView updatecategory(@RequestParam("categoryID") int CategoryID)
	{
		Category c = categoryDao.findById(CategoryID);
		 ModelAndView view = new ModelAndView();
		 view.addObject("cat",c);
		 view.addObject("catList", categoryDao.retrieve());
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
		categoryDao.insertCategory(cat1);
		view.setViewName("redirect:/Manage Category List?update");
		return view;
	}
	
	@RequestMapping ("/deleteCategory/{categoryID}")
	public String delete(@PathVariable("categoryID") int CategoryID)
	{
		categoryDao.deleteCategory(CategoryID);
		return "redirect:/Manage Category List?del";
	}
}
