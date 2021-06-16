package com.project3;

public class CartDTO {
	
	//장바구니, 관심목록
	private int no;
	private String userId;
	private String product;
	private String title;
	private String sized;
	private int qty;	
	private int price;
	private String sdate;
	
	//마일리지	
	private int mileage;
	
	//포인트	
	private int point;
	
	//적립내역
	private String content;
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}
	
	public String getSized() {
		return sized;
	}

	public void setSized(String sized) {
		this.sized = sized;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		
		this.mileage = mileage;
	}
	
	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
