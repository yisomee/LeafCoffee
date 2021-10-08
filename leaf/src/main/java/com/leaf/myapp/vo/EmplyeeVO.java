package com.leaf.myapp.vo;

public class EmplyeeVO {
	private int emp_num;
	private String emp_posi; // 직급
	private String emp_regdate; // 입사일
	private String id;
		
	private int dept_num; // 부서코드
	private String dept_name; // 부서명
	
	
	
	public int getEmp_num() {
		return emp_num;
	}
	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}
	public String getEmp_posi() {
		return emp_posi;
	}
	public void setEmp_posi(String emp_posi) {
		this.emp_posi = emp_posi;
	}
	public String getEmp_regdate() {
		return emp_regdate;
	}
	public void setEmp_regdate(String emp_regdate) {
		this.emp_regdate = emp_regdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDept_num() {
		return dept_num;
	}
	public void setDept_num(int dept_num) {
		this.dept_num = dept_num;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	
	
	
}
