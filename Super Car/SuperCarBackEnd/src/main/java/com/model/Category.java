package com.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component
@Entity
@Table(name="Category")
public class Category implements Serializable
{
	@Id
	private int CategoryID;
	private String CategoryName;
	
	@OneToMany(targetEntity = Product.class, fetch=FetchType.EAGER, mappedBy = "category")
	private Set<Product> Product = new HashSet<Product>(0);
	
	//==================================== Category ID ==================================//
	public int getCategoryID() {
		return CategoryID;
	}

	public void setCategoryID(int categoryID) {
		this.CategoryID = categoryID;
	}
	//===================================================================================//
	
	//=================================== Category Name==================================//
	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		this.CategoryName = categoryName;
	}
	//===================================================================================//
	
	//================================== List of Category ===============================//
	public Set<Product> getProducts() {
		return Product;
	}

	public void setProducts(Set<Product> product) {
		this.Product = product;
	}
	//===================================================================================//
}
