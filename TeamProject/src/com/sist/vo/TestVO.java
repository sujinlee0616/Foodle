package com.sist.vo;

//3개의 
public class TestVO {
	
	//detail info
	private int rest_rno;
	private String rest_type;
	private String rest_name;
	private String rest_open;
	private String rest_grade;
	private String rest_adress;
	
	//thema info
	private String type_name;
	private String now_date ;
	
	//price info
	
	private String menu_name;
	private String takeout_col;
	
	private String low_price;
	private String high_price;
	
	
	
	
	public String getRest_adress() {
		return rest_adress;
	}
	public void setRest_adress(String rest_adress) {
		this.rest_adress = rest_adress;
	}
	public String getTakeout_col() {
		return takeout_col;
	}
	public void setTakeout_col(String takeout_col) {
		this.takeout_col = takeout_col;
	}
	public String getRest_grade() {
		return rest_grade;
	}
	public void setRest_grade(String rest_grade) {
		this.rest_grade = rest_grade;
	}
	
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getRest_open() {
		return rest_open;
	}
	public void setRest_open(String rest_open) {
		this.rest_open = rest_open;
	}
	
	public int getRest_rno() {
		return rest_rno;
	}
	public void setRest_rno(int rest_rno) {
		this.rest_rno = rest_rno;
	}
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getRest_type() {
		return rest_type;
	}
	public void setRest_type(String rest_type) {
		this.rest_type = rest_type;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public String getNow_date() {
		return now_date;
	}
	public void setNow_date(String now_date) {
		this.now_date = now_date;
	}
	public String getLow_price() {
		return low_price;
	}
	public void setLow_price(String low_price) {
		this.low_price = low_price;
	}
	public String getHigh_price() {
		return high_price;
	}
	public void setHigh_price(String high_price) {
		this.high_price = high_price;
	}
	@Override
	public String toString() {
		return "TestVO [rest_rno=" + rest_rno + ", rest_type=" + rest_type + ", rest_name=" + rest_name + ", rest_open="
				+ rest_open + ", rest_grade=" + rest_grade + ", rest_adress=" + rest_adress + ", type_name=" + type_name
				+ ", now_date=" + now_date + ", menu_name=" + menu_name + ", takeout_col=" + takeout_col
				+ ", low_price=" + low_price + ", high_price=" + high_price + "]";
	}
	

}
