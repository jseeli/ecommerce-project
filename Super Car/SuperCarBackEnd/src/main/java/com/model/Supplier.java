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
@Table(name="Supplier")
public class Supplier implements Serializable
{
	@Id
	private int SupplierID;
	private String SupplierName;
	
	@OneToMany(targetEntity = Product.class, fetch=FetchType.EAGER, mappedBy = "supplier")
	private Set<Product> Product = new HashSet<Product>(0);

	//==================================== Supplier ID ==================================//
	public int getSupplierID() {
		return SupplierID;
	}

	public void setSupplierID(int supplierID) {
		this.SupplierID = supplierID;
	}
	//===================================================================================//
	
	//=================================== Supplier Name =================================//
	public String getSupplierName() {
		return SupplierName;
	}

	public void setSupplierName(String supplierName) {
		this.SupplierName = supplierName;
	}
	//===================================================================================//
	
	//================================= List of Supplier ================================//
	public Set<Product> getProducts() {
		return Product;
	}

	public void setProducts(Set<Product> product) {
		this.Product = product;
	}
	//===================================================================================//
}
