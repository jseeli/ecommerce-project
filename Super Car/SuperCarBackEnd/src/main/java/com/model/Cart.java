package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart 
{
	@Id
	@GeneratedValue
	private int cartitemid;
	
	private int CartID;
	private int ProductID;
	private int Quantity;
	private double Price;
	private String Username;
	private String Productname;
	private String Status;
	
	//==================================== CartitemID ===================================//
	public int getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}
	//===================================================================================//
	
	//===================================== CartID ======================================//
	public int getCartID() {
		return CartID;
	}
	public void setCartID(int cartID) {
		this.CartID = cartID;
	}
	//===================================================================================//
	
	//===================================== ProductID ===================================//
	public int getProductID() {
		return ProductID;
	}
	public void setProductID(int productID) {
		this.ProductID = productID;
	}
	//===================================================================================//
	
	//===================================== Quantity ====================================//
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		this.Quantity = quantity;
	}
	//===================================================================================//
	
	//====================================== Price ======================================//
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		this.Price = price;
	}
	//===================================================================================//
	
	//===================================== Username ====================================//
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		this.Username = username;
	}
	//===================================================================================//
	
	//=================================== ProductName ===================================//
	public String getProductname() {
		return Productname;
	}
	public void setProductname(String productname) {
		this.Productname = productname;
	}
	//===================================================================================//
	
	//====================================== Status =====================================//
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		this.Status = status;
	}
	//===================================================================================//
}
