package com.leaf.myapp.vo;

public class ProductVO {
	//제품 vo
	private int hq_num;
	private String hq_name;
	private int ware_price;
	private String ware_date;
	private int ware_cnt;
	private int emp_num;
	//파트너 vo
	private int part_num;
	private String part_company;
	private String part_name;
	private String part_tel;
	private String part_email;
	private String part_code_name;
	private String part_regdate;
	private int order_status;
	
	//발주 vo
	private int pc_num;
	private int pc_cnt;
	private String pc_date;
	private int fc_num;

	//가맹점 vo
	// 나중에 넣자..........

	
	
	
	public int getHq_num() {
		return hq_num;
	}
	public void setHq_num(int hq_num) {
		this.hq_num = hq_num;
	}
	public int getWare_price() {
		return ware_price;
	}
	public void setWare_price(int ware_price) {
		this.ware_price = ware_price;
	}
	public int getWare_cnt() {
		return ware_cnt;
	}
	public void setWare_cnt(int ware_cnt) {
		this.ware_cnt = ware_cnt;
	}
	public String getWare_date() {
		return ware_date;
	}
	public void setWare_date(String ware_date) {
		this.ware_date = ware_date;
	}
	public int getPart_num() {
		return part_num;
	}
	public void setPart_num(int part_num) {
		this.part_num = part_num;
	}
	public int getEmp_num() {
		return emp_num;
	}
	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}
	public String getHq_name() {
		return hq_name;
	}
	public void setHq_name(String hq_name) {
		this.hq_name = hq_name;
	}
	public String getPart_company() {
		return part_company;
	}
	public void setPart_company(String part_company) {
		this.part_company = part_company;
	}
	public String getPart_name() {
		return part_name;
	}
	public void setPart_name(String part_name) {
		this.part_name = part_name;
	}
	public String getPart_tel() {
		return part_tel;
	}
	public void setPart_tel(String part_tel) {
		this.part_tel = part_tel;
	}
	public String getPart_email() {
		return part_email;
	}
	public void setPart_email(String part_email) {
		this.part_email = part_email;
	}
	public String getPart_code_name() {
		return part_code_name;
	}
	public void setPart_code_name(String part_code_name) {
		this.part_code_name = part_code_name;
	}
	public String getPart_regdate() {
		return part_regdate;
	}
	public void setPart_regdate(String part_regdate) {
		this.part_regdate = part_regdate;
	}
	public int getPc_num() {
		return pc_num;
	}
	public void setPc_num(int pc_num) {
		this.pc_num = pc_num;
	}
	public int getPc_cnt() {
		return pc_cnt;
	}
	public void setPc_cnt(int pc_cnt) {
		this.pc_cnt = pc_cnt;
	}
	public String getPc_date() {
		return pc_date;
	}
	public void setPc_date(String pc_date) {
		this.pc_date = pc_date;
	}
	public int getFc_num() {
		return fc_num;
	}
	public void setFc_num(int fc_num) {
		this.fc_num = fc_num;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	
	
	
}
