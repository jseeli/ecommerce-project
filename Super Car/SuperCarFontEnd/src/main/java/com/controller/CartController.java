package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CartDao;
import com.daoImpl.ProductDaoImpl;
import com.model.Cart;

@Controller
public class CartController 
{
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@RequestMapping(value="/addtocart/{productID}", method=RequestMethod.POST)
	public String addtocart(@PathVariable("productID")int ProductID, @RequestParam("quantity") int Quantity, HttpSession session, Model c)
	{
		Cart cart = new Cart();
		String username = (String) session.getAttribute("username");

		cart.setCartID(2);
		cart.setProductID(ProductID);
		cart.setQuantity(Quantity);
		cart.setStatus("N");
		cart.setUsername(username);
		cartDao.AddCartItem(cart);
		c.addAttribute("cartlist", cartDao.getCartItems(username));
		return "Cart";
	}
	
	public String UpdateItemfromCart(@PathVariable("cartitemid") int cartitemid, Model c)
	{
		Cart cart1=cartDao.getCartItem(cartitemid);
		/* Set The parameter to be change*/
		c.addAttribute("cartlist", cartDao.UpdateCartItem(cart1));
		return "Cart";
	}
	
	public String DeleteItemfromCart(@PathVariable("cartitemid") int cartitemid, Model c)
	{
		Cart cart2=cartDao.getCartItem(cartitemid);
		c.addAttribute("cartlist", cartDao.DeleteCartItem(cart2));
		return "Cart";
	}
}
