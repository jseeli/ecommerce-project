package com.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.CartDao;
import com.model.Cart;

public class CartTest 
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		
		CartDao cartDao= (CartDao)context.getBean("cartDao");
		
		/*Cart cart = new Cart();
		cart.setCartID(1);
		cart.setProductID(2);
		cart.setProductname("Pagani");
		cart.setPrice(95000000.00);
		cart.setQuantity(2);
		cart.setStatus("Y");
		cart.setUsername("Kirtan");
		
		cartDao.AddCartItem(cart);
		System.out.println("Item is Adding to Cart");*/
		
		List<Cart> cartItems=cartDao.getCartItems("Vandan");
		for(Cart cart1:cartItems)
		{
			System.out.print(cart1.getCartID()+":::");
			System.out.print(cart1.getProductID()+":::");
			System.out.print(cart1.getProductname()+":::");
			System.out.print(cart1.getPrice()+":::");
			System.out.print(cart1.getQuantity()+":::");
			System.out.println(cart1.getStatus());
		}
		System.out.println("Cart Items Display");
		
		/*Cart cart2 = cartDao.getCartItem(80);
		cart2.setQuantity(2);
		cart2.setStatus("Y");
		cartDao.UpdateCartItem(cart2);
		System.out.println("Updating Item");*/
		
		/*Cart cart3 = cartDao.getCartItem(86);
		cartDao.DeleteCartItem(cart3);
		System.out.println("Deleting Cart Item");*/
	}
}
