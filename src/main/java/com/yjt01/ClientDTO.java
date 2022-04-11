package com.yjt01;

public class ClientDTO {
	int num;//pk
	String id; //fk
	String name;
	public ClientDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClientDTO(int num, String id, String name) {
		super();
		this.num = num;
		this.id = id;
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
