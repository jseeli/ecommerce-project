package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;

@Repository("cartDao")
public class CartDao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDao (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public boolean AddCartItem(Cart cartitem)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(cartitem);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	public List<Cart> getCartItems(String username)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where Username=:username and Status='N'");
		query.setParameter("username",username);
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		return list;
	}
	
	@Transactional
	public void DeleteCartItem(Cart cart)
	{
		sessionFactory.getCurrentSession().delete(cart);
	}
	
	public Cart getCartItem(int cartitemid)
	{
		Session session = sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartitemid);
		return cart;
	}
	
	@Transactional
	public void UpdateCartItem(Cart cart)
	{
		sessionFactory.getCurrentSession().update(cart);
	}
}
