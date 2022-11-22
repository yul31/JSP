package com.smhrd.model;

public class MemberVO {
	//한명에 대한 정보를 저장할 수 있는 자료형
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String phone;
	private int admin;
	
	public MemberVO(String id, String pw) {
		this.id = id;
		this.pwd = pw;
	}
	
	//모든 데이터 초기화하는 생성자 만들기
	public MemberVO(String id, String pwd, String name, String email, String phone, int admin) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.admin = admin;
	}

	//getter 메소드 만들기
	public String getId() {
		return id;
	}

	public String getPwd() {
		return pwd;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public int getAdmin() {
		return admin;
	}
}
