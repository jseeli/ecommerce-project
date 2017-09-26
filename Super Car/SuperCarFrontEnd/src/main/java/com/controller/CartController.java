package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.CartDao;
import com.dao.ProductDao;
import com.model.Cart;
import com.model.Product;

@Controller
public class CartController 
{
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="Cart")
	public String showcart(HttpSession session, Model c)
	{
		Cart cat = new Cart();
		String username = (String) session.getAttribute("username");
		List<Cart> list = cartDao.getCartItems(username);
		c.addAttribute("cartitemlist", list);
		return "Cart";
	}
	
	@RequestMapping(value="/AddToCart/{productID}")
	public String addtocart(@PathVariable("productID")int ProductID, @RequestParam("quantity") int Quantity, HttpSession session, Model c)
	{
		Cart cart = new Cart();
		String username = (String) session.getAttribute("username");

		cart.setCartID(2);
		cart.setProductID(ProductID);
		cart.setQuantity(Quantity);
		cart.setStatus("N");
		cart.setUsername(username);
		
		Product product = productDao.getProduct(ProductID);
		cart.setProductname(product.getProductName());
		cart.setPrice(product.getPrice());
		
		cartDao.AddCartItem(cart);
		
		List<Cart> list = cartDao.getCartItems(username);
		c.addAttribute("cartitemlist", list);
		
		return "Cart";
	}
	
	@RequestMapping(value="/updateCartItem/{cartitemid}")
	public String UpdateItemfromCart(@PathVariable("cartitemid") int cartitemid, @RequestParam("quantity") int Quantity, HttpSession session, Model c)
	{
		Cart cart1=cartDao.getCartItem(cartitemid);
		String username = (String)session.getAttribute("usrename");
		
		cart1.setQuantity(Quantity);
		cartDao.UpdateCartItem(cart1);
		
		List<Cart> list = cartDao.getCartItems(username);
		c.addAttribute("cartitemlist", list);
		return "Cart";
	}
	
	@RequestMapping(value="/deleteCartItem/{cartitemid}")
	public String DeleteItemfromCart(@PathVariable("cartitemid") int cartitemid, HttpSession session, Model c)
	{
		Cart cart2=cartDao.getCartItem(cartitemid);
		String username = (String)session.getAttribute("usrename");
		
		cartDao.DeleteCartItem(cart2);
		
		List<Cart> list = cartDao.getCartItems(username);
		c.addAttribute("cartitemlist", list);
		return "Cart";
	}
}
