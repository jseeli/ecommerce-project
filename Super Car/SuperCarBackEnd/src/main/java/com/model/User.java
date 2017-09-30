package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	
	@GeneratedValue
	private int ID;
	
	@NotNull
	@Size(min=2, max=20)
	@Pattern(regexp="[^0-9]*")
	private String Username;
	
	@NotNull
	@Size(min=2, max=20)
	private String Password;
	
	@NotNull
	private String Gender;
	
	@NotNull
	@Min(10)
	private long Mobile;
	
	@NotNull
	@Size(min=2, max=20)
	private String Address;
	
	@NotNull
	@Size(min=2, max=20)
	@Pattern(regexp="[^0-9]*")
	private String City;
	
	@NotNull
	@Size(min=2, max=20)
	@Pattern(regexp="[^0-9]*")
	private String States;
	
	@NotNull
	@Size(min=2, max=20)
	@Pattern(regexp="[^0-9]*")
	private String Country;
	
	@NotNull
	//@Size(min=2, max=6)
	private int Pincode;
	
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
	public long getMobile() {
		return Mobile;
	}
	public void setMobile(long mobile) {
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
	public int getPincode() 
	{
		return Pincode;
	}
	public void setPincode(int pincode) 
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
