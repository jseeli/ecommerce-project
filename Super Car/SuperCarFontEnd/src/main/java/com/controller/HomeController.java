package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController 
{	
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping(value = "/AdminHome", method = RequestMethod.GET)
	public ModelAndView getadminhome() {
		ModelAndView view = new ModelAndView("AdminHome");
		return view;
	}
	
	@RequestMapping(value = "/UserHome", method = RequestMethod.GET)
	public ModelAndView getuserhome() {
		ModelAndView view = new ModelAndView("UserHome");
		return view;
	}
}
