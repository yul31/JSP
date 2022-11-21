package com.smart.model;

public class MemberBean {
	private String name;
	private String pwd;
	private String email;
	
	//생성자
	public MemberBean(String name, String pwd, String email) {
		this.name = name;
		this.pwd = pwd;
		this.email = email;
	}

	//getter/setter 메소드
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
