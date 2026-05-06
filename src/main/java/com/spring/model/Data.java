package com.spring.model;


public class Data {
	
	private String name;
	private int id;
	private String vill="Bengaluru";
	
	public void setName(String Name) {
		name=Name;
	}
	public String getName() {
		return name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVill() {
		return vill;
	}
	public void setVill(String vill) {
		this.vill = vill;
	}
	public Data() {
		super();
	}
	public Data(String name, int id, String vill) {
		super();
		this.name = name;
		this.id = id;
		this.vill = vill;
	}
	
	@Override
	public String toString(){
		return " Name: "+name +"Id "+id+"Vill"+vill;
	}

}
