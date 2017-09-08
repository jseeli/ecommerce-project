package com.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.CartDao;
import com.model.Cart;

public class CartTestCase 
{
	static CartDao cartDao;
	
	@BeforeClass
	public static void initaialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		cartDao = (CartDao)context.getBean("cartDao");
	}

	@Test
	public void testAddingCartItem()
	{
		Cart cart = new Cart();
		cart.setCartID(1);
		cart.setProductID(2);
		cart.setProductname("Pagani");
		cart.setPrice(95000000.00);
		cart.setQuantity(2);
		cart.setStatus("Y");
		cart.setUsername("Vandan");
		
		assertTrue(cartDao.AddCartItem(cart));
	}
	
	@Test
	public void testAllCartItem()
	{
		List<Cart> cartItems=cartDao.getCartItems("Kirtan");
		assertNotNull("Test Failed", cartItems);
	}
}
