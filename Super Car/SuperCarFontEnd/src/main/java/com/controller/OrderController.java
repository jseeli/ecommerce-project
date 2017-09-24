package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CartDao;
import com.daoImpl.ProductDaoImpl;
import com.model.Cart;

@Controller
public class OrderController 
{
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@RequestMapping("/OrderConfirmation")
	public String OrderConformation(HttpSession session, Model o)
	{
		String username = (String)session.getAttribute("username");
		List<Cart> list = cartDao.getCartItems(username);
		
		double grandtotal=0;
		for(Cart cart:list)
		{
			grandtotal = grandtotal+(cart.getPrice() * cart.getQuantity());
		}
		o.addAttribute("grandtotal", grandtotal);
		o.addAttribute("Cartitems", list);
		
		return "OrderConfirmation";
	}
	
	@RequestMapping("/PaymentConfirmation")
	public String paymentConformation(HttpSession session)
	{
		String username = (String)session.getAttribute("username");
		cartDao.UpdatePaymentStatus(username);
		return "PaymentConfirmation";
	}
}
