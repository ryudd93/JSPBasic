package com.bean;

public class User {
	/*
	 * 자바빈은 form과 DB통신 과정에서 변수 처리를 쉽게 하기 위해 사용
	 * 관련 변수를 동일한 이름으로 선언하고 getter, setter를 반드시 생성
	*/
	
	public String id;
	public String pw;
	public String name;
	public String email;
	
	//생성자 - 빈클래스는 기본 생성자, 모든 변수를 초기화하는 생성자를 만듭니다
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String id, String pw, String name, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}

	
	//getter, setter
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
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
	
		
	
	
	
}
