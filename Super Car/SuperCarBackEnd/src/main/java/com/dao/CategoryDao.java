package com.dao;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface CategoryDao 
{
	public boolean insertCategory(Category category);
	
	public List<Category> retrieve();
	
	public Category findById(int CategoryID);
	
	public boolean updateCategory(Category category);
	
	public boolean updateProduct(Product prod);
	
	public boolean deleteCategory(int CategoryID);
}
