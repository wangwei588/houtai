package com.kgc.entity;


/**
 * 商品类
 * @author lenovo
 *
 */
public class Goods {

	private int g_id;
	private String g_name;
	private double g_price;
	private Sort sort;
	private String g_img;
	private String text;
	private GoodsZt goodsZt;
	private String create_time;
	private User user;
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public double getG_price() {
		return g_price;
	}
	public void setG_price(double g_price) {
		this.g_price = g_price;
	}
	public String getG_img() {
		return g_img;
	}
	public void setG_img(String g_img) {
		this.g_img = g_img;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public Sort getSort() {
		return sort;
	}
	public void setSort(Sort sort) {
		this.sort = sort;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public GoodsZt getGoodsZt() {
		return goodsZt;
	}
	public void setGoodsZt(GoodsZt goodsZt) {
		this.goodsZt = goodsZt;
	}
	@Override
	public String toString() {
		return "Goods [g_id=" + g_id + ", g_name=" + g_name + ", g_price=" + g_price + ", sort=" + sort + ", g_img="
				+ g_img + ", text=" + text + ", goodsZt=" + goodsZt + ", create_time=" + create_time + ", user=" + user
				+ "]";
	}
	
	
	
	
	
	
}
