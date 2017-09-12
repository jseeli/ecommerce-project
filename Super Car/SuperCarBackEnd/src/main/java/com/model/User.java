package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@SuppressWarnings("unused")
@Component
@Entity
@Table(name="User")
public class User implements Serializable
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private String Email;
	private int ID;
	private String Username;
	private String Password;
	private String Gender;
	private String Mobile;
	private String Address;
	private String City;
	private String States;
	private String Country;
	private String Pincode;
	private String Role;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		this.ID = iD;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	//===================================== FirstName ===================================//
	public String getUsername() 
	{
		return Username;
	}
	public void setUsername(String username) 
	{
		this.Username = username;
	}
	//===================================================================================//
	
	//===================================== Email-ID ====================================//
	public String getEmail() 
	{
		return Email;
	}
	public void setEmailId(String email) 
	{
		this.Email = email;
	}
	//===================================================================================//
	
	//===================================== Password ====================================//
	public String getPassword() 
	{
		return Password;
	}
	public void setPassword(String password) 
	{
		this.Password = password;
	}
	//===================================================================================//
	
	//====================================== Gender =====================================//
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	//===================================================================================//
	
	//===================================== Mobile No. ==================================//
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		this.Mobile = mobile;
	}
	//===================================================================================//
	
	//====================================== Address ====================================//
	public String getAddress() 
	{
		return Address;
	}
	public void setAddress(String address) 
	{
		this.Address = address;
	}
	//===================================================================================//
	
	//======================================= City =====================================//
	public String getCity() 
	{
		return City;
	}
	public void setCity(String city) 
	{
		this.City = city;
	}
	//===================================================================================//
	
	//======================================= States ====================================//
	public String getStates() 
	{
		return States;
	}
	public void setStates(String states) 
	{
		this.States = states;
	}
	//===================================================================================//
	
	//====================================== Country ====================================//
	public String getCountry() 
	{
		return Country;
	}
	public void setCountry(String country) 
	{
		this.Country = country;
	}
	//===================================================================================//
	
	//====================================== Pin code ====================================//
	public String getPincode() 
	{
		return Pincode;
	}
	public void setPincode(String pincode) 
	{
		this.Pincode = pincode;
	}
	//===================================================================================//
	
	//======================================= Role ======================================//
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		this.Role = role;
	}
	//===================================================================================//

}
