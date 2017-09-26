package com.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.dao.CategoryDao;
import com.model.Category;

public class CategoryTestCase 
{
	static CategoryDao categoryDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		categoryDao=(CategoryDao)annotationConfigAppContext.getBean("categoryDao");
	}
	
	/*@Test
	public void testAddingCategory()
	{
		Category category = new Category();
		category.setCategoryID(5);
		category.setCategoryName("Audi");
		
		assertTrue("Error Inserting Cart Item",categoryDao.insertCategory(category));
	}*/
	
	/*@Test
	public void testCategoryList()
	{
		List<Category> categorylist = categoryDao.retrieve();
		for(Category category1:categorylist)
		{
			System.out.print("category ID: "+categoty1.getCategoryID()+"; ");
			System.out.println("category Name: "+categoty1.getCategoryName()+"; ");
		}
		System.out.println("category Items Display");
		
		assertNotNull("Test Failed", categorylist);
	}*/
	
	/*@Test														//Problem Updating Data
	public void testUpdateCategory()
	{
		Category category2 = categoryDao.findById(5);			//Before Updating item please check the ID number is given valid or invalid, In this case 5 is id
		category2.setCategoryName("BMW");
		
		assertTrue("Error Updating Category Name", categoryDao.updateCategory(category2));
		
		System.out.print("category ID: "+category2.getCategoryID()+"; ");
		System.out.println("category Name: "+category2.getCategoryName()+"; ");
	}*/
	
	/*@Test
	public void testDeleteCategory()
	{	
		//Before Deleting item please check the ID number is given valid or invalid, In this case 5 is id
		assertTrue("Error Deleting Category", categoryDao.deleteCategory(5));
	}*/
}
