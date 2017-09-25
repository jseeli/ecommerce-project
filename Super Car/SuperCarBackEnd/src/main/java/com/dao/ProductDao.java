package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao 
{
	public boolean insertProduct(Product product);
	
	public List<Product> retrieve();
	
	public Product findById(int ProductID);
	
	public boolean updateProduct(Product prod);
	
	public boolean deleteProduct(int ProductID);
	
	public Product getProduct(int ProductID);
}
