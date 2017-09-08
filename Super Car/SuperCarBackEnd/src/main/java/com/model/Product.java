package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component
@Entity
@Table(name="Product")
public class Product<MultipartFile> implements Serializable
{
	@Id
	@GeneratedValue
	private int ProductID;
	private String ProductName;
	private double Price;
	private String Description;
	private int Stock;
	
	@ManyToOne (fetch=FetchType.LAZY)
	@JoinColumn(name="CategoryID")
	private Category category;
	
	@ManyToOne (fetch=FetchType.LAZY)
	@JoinColumn(name="SupplierID")
	private Supplier supplier;
	
	@Transient
	MultipartFile Productimage;
	private String ProductImage;
	
	//=================================== Product ID =====================================//
	public int getProductID() {
		return ProductID;
	}
	public void setProductID(int productId) {
		this.ProductID = productId;
	}
	//===================================================================================//
	
	//================================== Product Name ===================================//
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		this.ProductName = productName;
	}
	//===================================================================================//
	
	//================================== Product Price ==================================//
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		this.Price = price;
	}
	//===================================================================================//
	
	//=============================== Product Description ===============================//
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		this.Description = description;
	}
	//===================================================================================//
	
	//====================================== Stock ======================================//
	public int getStock() {
		return Stock;
	}
	public void setStock(int stock) {
		this.Stock = stock;
	}
	//===================================================================================//
	
	//===================================== Category ====================================//
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	//===================================================================================//
	
	//===================================== Supplier ====================================//
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	//===================================================================================//
	
	//=================================== Product Image =================================//
	public MultipartFile getProductimage() {
		return Productimage;
	}
	public void setProductimage(MultipartFile productimage) {
		this.Productimage = productimage;
	}
	//===================================================================================//
	
	//================================ Product Image Name ===============================//
	public String getProductImage() {
		return ProductImage;
	}
	public void setProductImage(String productImage) {
		this.ProductImage = productImage;
	}
	//===================================================================================//
	
}
