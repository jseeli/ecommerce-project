package com.dao;

import java.util.List;

import com.model.Product;
import com.model.Supplier;

public interface SupplierDao 
{
	public boolean insertSupplier(Supplier supplier);
	
	public List<Supplier> retrieve();
	
	public Supplier findById(int SupplierID);
	
	public boolean updateSupplier(Supplier supplier);
	
	public boolean updateProduct(Product prod);
	
	public boolean deleteSupplier(int SupplierID);
}
