package com.kgc.entity;

public class GuanUser {
	private int guan_id;
	private String guan_name;
	private String guan_zname;
	private String guan_phone;
	private String guan_password;
	private QuanXian quanXian;
	public QuanXian getQuanXian() {
		return quanXian;
	}
	public void setQuanXian(QuanXian quanXian) {
		this.quanXian = quanXian;
	}
	public int getGuan_id() {
		return guan_id;
	}
	public void setGuan_id(int guan_id) {
		this.guan_id = guan_id;
	}
	public String getGuan_name() {
		return guan_name;
	}
	public void setGuan_name(String guan_name) {
		this.guan_name = guan_name;
	}
	public String getGuan_password() {
		return guan_password;
	}
	public void setGuan_password(String guan_password) {
		this.guan_password = guan_password;
	}
	
	public String getGuan_zname() {
		return guan_zname;
	}
	public void setGuan_zname(String guan_zname) {
		this.guan_zname = guan_zname;
	}
	public String getGuan_phone() {
		return guan_phone;
	}
	public void setGuan_phone(String guan_phone) {
		this.guan_phone = guan_phone;
	}
	@Override
	public String toString() {
		return "GuanUser [guan_id=" + guan_id + ", guan_name=" + guan_name + ", guan_password=" + guan_password
				+  ", quanXian=" + quanXian + "]";
	}
	
	
}
