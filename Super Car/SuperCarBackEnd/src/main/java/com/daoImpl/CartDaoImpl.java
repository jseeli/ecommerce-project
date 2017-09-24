package com.daoImpl;

import java.util.List;

import javax.transaction.Transactional;
import javax.persistence.TransactionRequiredException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CartDao;
import com.model.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
	public boolean AddCartItem(Cart cartitem)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(cartitem);
			System.out.println("Saving Item............................");
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	@Override
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
	@Override
	public Cart getCartItem(int cartitemid)
	{
		Session session = sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartitemid);
		return cart;
	}
	
	@Transactional
	@Override
	public boolean UpdateCartItem(Cart cart)
	{
		try
		{
			sessionFactory.getCurrentSession().update(cart);
			System.out.println("Updating Item.........................");
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean DeleteCartItem(Cart cart)
	{
		try 
		{
		sessionFactory.getCurrentSession().delete(cart);
		System.out.println("Deleting Item....................");
		return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	public boolean UpdatePaymentStatus(String username)
	{
		try
		{
			Session session = sessionFactory.openSession();
			Query query = session.createQuery("update Cart set Status='Y' where Username=:username");
			query.setParameter("username",username);
			System.out.println("Updating Status.............................");
			query.executeUpdate();
			System.out.println("Updating Complete...........................");
			session.close();
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
}
