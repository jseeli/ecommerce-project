package com.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;

@Controller
public class LoginController 
{
	@Autowired
	UserDao userDao;
	
	@RequestMapping (value = "/login", method = RequestMethod.GET)
	public ModelAndView getPagelog() {
		ModelAndView view = new ModelAndView ("login");
		return view;
	}
	
	@ModelAttribute
	public void addAttribute(Model a)
	{
		a.addAttribute("userList", userDao.retrieve());
	}
	
	@RequestMapping (value="/login_success")
	public String loginSuccess(HttpSession session, Model m)
	{
		System.out.println("=========== Successful Login ===========");
		
		String page = null;
		
		boolean loggedIn=true;
		//Retrieving the username
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username",username);
		session.setAttribute("loggedIn",loggedIn);
				
		//Retrieving the Role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		for(GrantedAuthority role:authorities)
		{
			System.out.println("---Role:"+role.getAuthority()+" Username:"+username+"----");
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				page="AdminHome";
			}
			else
			{
				page="UserHome";
			}
		}
		
		return page;
	}
}
