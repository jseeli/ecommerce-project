package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

public class ProductTestCase 
{
	static ProductDao productDao;
	static CategoryDao categoryDao;
	static SupplierDao supplierDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		productDao=(ProductDao)annotationConfigAppContext.getBean("productDao");
		categoryDao=(CategoryDao)annotationConfigAppContext.getBean("categoryDao");
		supplierDao=(SupplierDao)annotationConfigAppContext.getBean("supplierDao");
	}

	/*@Test
	public void testAddingCartItem()
	{
		Category category = categoryDao.findById(1);
		Supplier supplier = supplierDao.findById(3);
		Product product = new Product();
		product.setProductName("Audi A8");
		product.setDescription("Sports Car");
		product.setProductImage("aventador.png");
		product.setPrice(75000000.00);
		product.setStock(20);
		product.setCategory(category);
		product.setSupplier(supplier);
		
		assertTrue("Error Inserting Product",productDao.insertProduct(product));
	}*/
	
	/*@Test
	public void testAllCartItem()
	{
		List<Product> products =productDao.retrieve();
		for(Product product1:products)
		{
			System.out.print("Product ID: "+product1.getProductID()+"; ");
			System.out.print("Product Name: "+product1.getProductName()+"; ");
			System.out.println("Product Description: "+product1.getDescription()+"; ");
			System.out.println("Product ImageName: "+product1.getProductImage()+"; ");
			System.out.print("Product Price: "+product1.getPrice()+"; ");
			System.out.print("product Stock: "+product1.getStock()+"; ");
			System.out.print("Product Category: "+product1.getCategory()+"; ");		//Specific ID is not displaying but displaying className@hashcode. 
			System.out.println("Product Supplier: "+product1.getSupplier());			//Specific ID is not displaying but displaying className@hashcode. 
		}
		System.out.println("Product Items Display");
		
		assertNotNull("Test Failed", products);
	}*/
	
	/*@Test																//Problem Updating Data
	public void testUpdateCartItem()
	{
		Product product2 = productDao.findById(76);						//Before Updating item please check the ID number is given valid or in valid, In this case 76 is id
		product2.setProductName("BMW");
		product2.setDescription("Standard Car");
		product2.setPrice(5000000.00);
		product2.setStock(50);
		
		assertTrue("Error Updating Product Item",productDao.updateProduct(product2));
		
		System.out.print("Product ID: "+product2.getProductID()+"; ");
		System.out.print("Product Name: "+product2.getProductName()+"; ");
		System.out.println("Product Description: "+product2.getDescription()+"; ");
		System.out.println("Product ImageName: "+product2.getProductImage()+"; ");
		System.out.print("Product Price: "+product2.getPrice()+"; ");
		System.out.print("product Stock: "+product2.getStock()+"; ");
		System.out.print("Product Category: "+product2.getCategory()+"; ");		//Specific ID is not displaying but displaying className@hashcode. 
		System.out.println("Product Supplier: "+product2.getSupplier());			//Specific ID is not displaying but displaying className@hashcode.
	}*/
	
	/*@Test
	public void testDeleteCartItem()
	{	
		//Before deleting item please check the ID number is given valid or invalid, In this case 76 is id
		assertTrue("Error Deleting Cart Item",productDao.deleteProduct(76));
	}*/
}
