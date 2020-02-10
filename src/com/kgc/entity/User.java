package com.kgc.entity;

public class User {
	
	private int u_id;
	private String u_name;
	private String u_password;
	private String u_address;
	private String u_phone;
	private int u_age;
	private String u_sex ;
	private String u_touxiang;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public int getU_age() {
		return u_age;
	}
	public void setU_age(int u_age) {
		this.u_age = u_age;
	}
	
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(int u_sex) {
		if(u_sex == 0){
			this.u_sex = "女";
		}else if(u_sex == 1){
			this.u_sex = "男";
		}
	}
	public String getU_touxiang() {
		return u_touxiang;
	}
	public void setU_touxiang(String u_touxiang) {
		this.u_touxiang = u_touxiang;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_password=" + u_password + ", u_address=" + u_address
				+ ", u_phone=" + u_phone + ", u_age=" + u_age + ", u_sex=" + u_sex + ", u_touxiang=" + u_touxiang + "]";
	}

	
	
	
}
