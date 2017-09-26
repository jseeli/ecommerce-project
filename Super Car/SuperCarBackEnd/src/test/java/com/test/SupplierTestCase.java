package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.SupplierDao;
import com.model.Supplier;

public class SupplierTestCase 
{
	static SupplierDao supplierDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		supplierDao=(SupplierDao)annotationConfigAppContext.getBean("supplierDao");
	}
	
	/*@Test
	public void testAddingSupplier()
	{
		Supplier supplier = new Supplier();
		supplier.setSupplierID(8);
		supplier.setSupplierName("Nexa Gujarat");
		
		assertTrue("Error Inserting Supplier Data", supplierDao.insertSupplier(supplier));
	}*/
	
	/*@Test
	public void testSupplierList()
	{
		List<Supplier> supplierlist = supplierDao.retrieve();
		for(Supplier supplier1:supplierlist)
		{
			System.out.print("Supplier ID: "+supplier1.getSupplierID()+"; ");
			System.out.println("Supplier Name: "+supplier1.getSupplierName()+"; ");
		}
		System.out.println("Supplier Items Display");
		
		assertNotNull("Test Failed", supplierlist);
	}*/
	
	/*@Test														//Problem Updating Data
	public void testUpdateSupplier()
	{
		Supplier supplier2 = supplierDao.findById(6);			//Before Updating item please check the ID number is given valid or invalid, In this case 6 is id
		supplier2.setSupplierName("Nexa UK");
		
		assertTrue("Error Updating Supplier Name", supplierDao.updateSupplier(supplier2));
		
		System.out.print("Supplier ID: "+supplier2.getSupplierID()+"; ");
		System.out.println("Supplier Name: "+supplier2.getSupplierName()+"; ");
	}*/
	
	/*@Test
	public void testDeleteSupplier()
	{	
		//Before Deleting item please check the ID number is given valid or invalid, In this case 6 is id
		assertTrue("Error Deleting Supplier", supplierDao.deleteSupplier(6));
	}*/
}
