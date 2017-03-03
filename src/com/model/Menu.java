package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="menu")
public class Menu {
	@Id
	@Column(name="menuid")
	private String menuid;
	
	@Column(name="sellerid")
	private String sellerid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="price")
	private String price;
	
	public String getmenuid(){
		return  menuid;
	}
	
	public void setmenuid(String menuid){
		this.menuid=menuid;
	}	
		
	public String getsellerid(){
		return  sellerid;
	}
		
	public void setsellerid(String sellerid){
		this.sellerid=sellerid;
	}
	
	public String getname(){
		return name;	
	}
	public void setname(String name){
		this.name=name;
		
	}
	public String getprice(){
		return price;
		
	}
	public void setprice(String price){
		this.price=price;
	}
	
}
