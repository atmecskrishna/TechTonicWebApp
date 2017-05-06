package com.users;

import java.util.Date;

public class User {
	
	protected int id;
	protected String userName;
	protected String emailId;
	protected String password;
	protected int role;

	public User() {
	}

	public User(int id) {
		this.id = id;
	}

	public User(int id, String name, String email, String password,int role) {
		this(name,email,password,role);
		this.id = id;
	}
	
	public User(String name, String email,String password,int role) {
		this.userName = name;
		this.password = email;
		this.emailId = password;
		
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}


	

}
