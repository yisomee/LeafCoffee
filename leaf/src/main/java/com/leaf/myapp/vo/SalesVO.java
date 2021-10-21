package com.leaf.myapp.vo;

public class SalesVO {
	private int od_num; // 주문번호
	private int p_num; // 판매상품번호
	private int od_cnt; // 수량
	private int fc_num; // 가맹점번호
	private String od_time; // 주문시간
	private String userid; // 구매자아이디
	
	private String p_name; // 상품명
	private String m_code; // 중분류명
	private String fc_name; // 가맹점이름
	private String fc_addr; // 가맹점주소
	
	
	// 계산
//	private // 주문에서 상품종류 분리하기
//	private // 주문당 총액
	
	
	public int getOd_num() {
		return od_num;
	}
	public void setOd_num(int od_num) {
		this.od_num = od_num;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getOd_cnt() {
		return od_cnt;
	}
	public void setOd_cnt(int od_cnt) {
		this.od_cnt = od_cnt;
	}
	public int getFc_num() {
		return fc_num;
	}
	public void setFc_num(int fc_num) {
		this.fc_num = fc_num;
	}
	public String getOd_time() {
		return od_time;
	}
	public void setOd_time(String od_time) {
		this.od_time = od_time;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getFc_name() {
		return fc_name;
	}
	public void setFc_name(String fc_name) {
		this.fc_name = fc_name;
	}
	public String getFc_addr() {
		return fc_addr;
	}
	public void setFc_addr(String fc_addr) {
		this.fc_addr = fc_addr;
	}
	
	
	
	
}
