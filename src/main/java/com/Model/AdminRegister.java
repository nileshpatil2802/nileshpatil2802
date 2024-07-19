package com.Model;

public class AdminRegister {
	
	private String name;
	private String email;
	private String pass;
	private String rpass;
	
	public AdminRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminRegister(String name, String email, String pass, String rpass) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.rpass = rpass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	
	@Override
	public String toString() {
		return "AdminRegister [name=" + name + ", email=" + email + ", pass=" + pass + ", rpass=" + rpass + "]";
	}
	
	
}
