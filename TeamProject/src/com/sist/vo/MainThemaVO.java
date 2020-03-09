package com.sist.vo;

public class MainThemaVO {
	//메인테마(ex.상황별,메뉴별,스페셜)
	private String t_MainThema;
	//상세테마(ex.연인과함께,친구와함께,외국인과함께...)
	private String t_DetailThema;
	//상세테마 설명
	private String t_Info;
	
	
	public String getT_Info() {
		return t_Info;
	}
	public void setT_Info(String t_Info) {
		this.t_Info = t_Info;
	}
	public String getT_MainThema() {
		return t_MainThema;
	}
	public void setT_MainThema(String t_MainThema) {
		this.t_MainThema = t_MainThema;
	}
	public String getT_DetailThema() {
		return t_DetailThema;
	}
	public void setT_DetailThema(String t_DetailThema) {
		this.t_DetailThema = t_DetailThema;
	}
	
	
}
