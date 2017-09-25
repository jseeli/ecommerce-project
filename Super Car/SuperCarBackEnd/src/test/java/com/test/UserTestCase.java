package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.UserDao;
import com.model.User;

public class UserTestCase 
{
	static UserDao userDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		userDao=(UserDao)annotationConfigAppContext.getBean("userDao");
	}
	
	@Test
	public void testAddingUser()
	{
		User user = new User();
		user.setEmail("Rajesh@gmail.com");
		user.setAddress("GrantRoad");
		user.setCity("Mumbai");
		user.setCountry("India");
		user.setGender("Male");
		user.setID(3);
		user.setMobile("9813565130");
		user.setPassword("123rajesh");
		user.setPincode("405429");
		user.setRole("USER_ROLE");
		user.setStates("Maharashtra");
		user.setUsername("rajesh");
		
		assertTrue("Error saving User details",userDao.insertUser(user));
	}
	
	@Test
	public void testAllUsers()
	{
		List<User> userlist = userDao.retrieve();
		for(User user1:userlist)
		{
			System.out.print("User ID: "+user1.getID()+"; ");
			System.out.print("User Name: "+user1.getUsername()+"; ");
			System.out.print("User Email: "+user1.getEmail()+";");
			System.out.print("User Password: "+user1.getPassword()+"; ");
			System.out.print("User Mobile: "+user1.getMobile()+"; ");
			System.out.print("User Role: "+user1.getRole()+"; ");
			System.out.print("User Gender: "+user1.getGender()+"; ");
			System.out.print("User Address: "+user1.getAddress()+"; ");
			System.out.print("User City: "+user1.getCity()+"; ");
			System.out.print("User Pincode: "+user1.getPincode()+"; ");
			System.out.print("User States: "+user1.getStates()+"; ");
			System.out.println("User Country: "+user1.getCountry()+"; ");
		}
		System.out.println("User Details Display");
		
		assertNotNull("Test Failed", userlist);
	}
	
	/*@Test
	public void testfindEmail()
	{
		User users = userDao.findByEmail("Rajesh@gmail.com");
		for(User user2: users)
		{
			System.out.print("User ID: "+users.getID()+"; ");
			System.out.print("User Name: "+users.getUsername()+"; ");
			System.out.print("User Email: "+users.getEmail()+";");
			System.out.print("User Password: "+users.getPassword()+"; ");
			System.out.print("User Mobile: "+users.getMobile()+"; ");
			System.out.print("User Role: "+users.getRole()+"; ");
			System.out.print("User Gender: "+users.getGender()+"; ");
			System.out.print("User Address: "+users.getAddress()+"; ");
			System.out.print("User City: "+users.getCity()+"; ");
			System.out.print("User Pincode: "+users.getPincode()+"; ");
			System.out.print("User States: "+users.getStates()+"; ");
			System.out.println("User Country: "+users.getCountry()+"; ");
		}
		assertNotNull("Error displaying user details", users);
	}*/
}
