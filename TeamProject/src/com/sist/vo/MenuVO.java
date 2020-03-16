package com.sist.vo;

public class MenuVO {
	//가게 고유번호
	private int r_No;
	//메뉴이름
	private String m_Name;
	//메뉴가격
	private int m_Price;
	//메뉴정보
	private String m_Info;
	//유저 좋아요 갯수
	private int m_UsergoodCount;
	//주인장 추천
	private String m_Hostgood;
	
	public int getR_No() {
		return r_No;
	}
	public void setR_No(int r_No) {
		this.r_No = r_No;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public int getM_Price() {
		return m_Price;
	}
	public void setM_Price(int m_Price) {
		this.m_Price = m_Price;
	}
	public String getM_Info() {
		return m_Info;
	}
	public void setM_Info(String m_Info) {
		this.m_Info = m_Info;
	}
	public int getM_UsergoodCount() {
		return m_UsergoodCount;
	}
	public void setM_UsergoodCount(int m_UsergoodCount) {
		this.m_UsergoodCount = m_UsergoodCount;
	}
	public String getM_Hostgood() {
		return m_Hostgood;
	}
	public void setM_Hostgood(String m_Hostgood) {
		this.m_Hostgood = m_Hostgood;
	}
}
