package com.yc.po;

public class OrderInfoPO {
	private int oid;
	private String orderNo;
	private int cid;
	private double wprice;
	private int nums;
	
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public double getWprice() {
		return wprice;
	}
	public void setWprice(double wprice) {
		this.wprice = wprice;
	}
	public int getNums() {
		return nums;
	}
	public void setNums(int nums) {
		this.nums = nums;
	}
	
	
}
