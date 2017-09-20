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
	public static void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		cartDao=(CartDao)annotationConfigAppContext.getBean("cartDao");
	}

	/*@Test
	public void testAddingCartItem()
	{
		Cart cart = new Cart();
		cart.setCartID(1);
		cart.setProductID(2);
		cart.setProductname("Bugatti");
		cart.setPrice(150000000.00);
		cart.setQuantity(1);
		cart.setStatus("N");
		cart.setUsername("kirtan");
		
		assertTrue("Error Inserting Cart Item",cartDao.AddCartItem(cart));
	}
	
	@Test
	public void testAllCartItem()
	{
		List<Cart> cartItems=cartDao.getCartItems("kirtan");
		for(Cart cart1:cartItems)
		{
			System.out.print("Cart ID: "+cart1.getCartID()+"; ");
			System.out.print("Product ID: "+cart1.getProductID()+"; ");
			System.out.print("Product Name: "+cart1.getProductname()+";");
			System.out.print("Product Price: "+cart1.getPrice()+"; ");
			System.out.print("Quantity: "+cart1.getQuantity()+"; ");
			System.out.println("Payment Status: "+cart1.getStatus());
		}
		System.out.println("Cart Items Display");
		
		assertNotNull("Test Failed", cartItems);
	}*/
	
	/*@Test
	public void testUpdateCartItem()
	{
		Cart cart2 = cartDao.getCartItem(39);						//Before Updating item please check the ID number is given valid or in valid
		cart2.setCartID(2);
		cart2.setQuantity(7);
		cart2.setStatus("Y");
		
		assertTrue("Error Updating Cart Item",cartDao.UpdateCartItem(cart2));
		
		System.out.print("Cart ID: "+cart2.getCartID()+"; ");
		System.out.print("Product ID: "+cart2.getProductID()+"; ");
		System.out.print("Product Name: "+cart2.getProductname()+"; ");
		System.out.print("Product Price: "+cart2.getPrice()+"; ");
		System.out.print("Quantity: "+cart2.getQuantity()+"; ");
		System.out.println("Payment Status: "+cart2.getStatus());
	}*/
	
	@Test
	public void testDeleteCartItem()
	{
		Cart cart3 = cartDao.getCartItem(39);						//Before deleting item please check the ID number is given valid or in valid
		
		assertTrue("Error Deleting Cart Item",cartDao.DeleteCartItem(cart3));
		
		System.out.println("Cart Item ID: "+cart3.getCartitemid() +" has been Deleted.");
	}
}
