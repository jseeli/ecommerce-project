package com.controller;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class RegisterController 
{
	@Autowired
	UserDao userDao;
	
	String r;
	Scanner scan = new Scanner(System.in);
	
	@RequestMapping (value = "/Register", method = RequestMethod.GET)
	public ModelAndView getRegisterPage() {
		ModelAndView view = new ModelAndView ();
		view.addObject("user", new User());
		view.setViewName("Register");
		return view;
	}
	
	@RequestMapping (value = "/saveregister", method = RequestMethod.POST)
	public ModelAndView saveRegister (@ModelAttribute("user") User user, BindingResult result)
	{
		ModelAndView view = new ModelAndView();
		if (result.hasErrors())
		{
			view.setViewName("Register");
			return view;
		}
		else
		{
			System.out.println("Enter the Role: ROLE_ADMIN or USER_ROLE");
			r = scan.next();
			user.setRole(r);
			userDao.insertUser(user);
			view.setViewName("redirect:/login");
			return view;
		}
	}
}
