package com.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class DemoTestCase 
{
	@Test
	public void initialize()
	{
		AnnotationConfigApplicationContext annotationConfigAppContext = new AnnotationConfigApplicationContext();
		annotationConfigAppContext.scan("com");
		annotationConfigAppContext.refresh();
		
		assertTrue("Initialization problem",true);
	}
}
