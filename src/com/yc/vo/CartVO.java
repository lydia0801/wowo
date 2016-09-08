package com.yc.vo;

public class CartVO {

	private  String gname;
	private  double price;
	private double wpri;
	private  int nums;
	private int cid;
	private double totalPrice;//每个套餐的总价格  =  wPri * nums
	
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getWpri() {
		return wpri;
	}
	public void setWpri(double wpri) {
		this.wpri = wpri;
	}
	public int getNums() {
		return nums;
	}
	public void setNums(int nums) {
		this.nums = nums;
	}
	
}
