package com.yjt01;

public class ContentDTO {

	int cnum ;
	String id,name,event,date,coment;
	int money;
	public ContentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ContentDTO(int cnum, String id, String name, String event, String date, String coment, int money) {
		super();
		this.cnum = cnum;
		this.id = id;
		this.name = name;
		this.event = event;
		this.date = date;
		this.coment = coment;
		this.money = money;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
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
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getComent() {
		return coment;
	}
	public void setComent(String coment) {
		this.coment = coment;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	
}
