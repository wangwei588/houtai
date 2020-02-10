package com.kgc.entity;

public class GoodsZt {
	private int zt_id;
	private String zt_name;
	public int getZt_id() {
		return zt_id;
	}
	public void setZt_id(int zt_id) {
		this.zt_id = zt_id;
	}
	public String getZt_name() {
		return zt_name;
	}
	public void setZt_name(String zt_name) {
		this.zt_name = zt_name;
	}
	@Override
	public String toString() {
		return "GoodsZt [zt_id=" + zt_id + ", zt_name=" + zt_name + "]";
	}
	
}
