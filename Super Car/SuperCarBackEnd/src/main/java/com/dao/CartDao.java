package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDao 
{
	public boolean AddCartItem(Cart cartitem);
	
	public List<Cart> getCartItems(String username);
	
	public boolean DeleteCartItem(Cart cart);
	
	public Cart getCartItem(int cartitemid);

	public boolean UpdateCartItem(Cart cart);
	
	public boolean UpdatePaymentStatus(String username);
	
	public List<Cart> getPaidItems(String username);
}
