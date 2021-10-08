package com.leaf.myapp.vo;

public class RegisterVO {
	
	private String userid;
	private String userpwd;
	private String username;
	private String birth;
	private int membership;
	private String regdate;
	private String addr;
	private String auth;
	
	// 연락처
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	// 이메일
	private String email;
	private String emailid; // @앞
	private String domain; // @뒤	
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getMembership() {
		return membership;
	}
	public void setMembership(int membership) {
		this.membership = membership;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
	// 이메일
	public String getEmail() {
		email = emailid+"@"+domain;
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
		
		if(email!=null) {
			String[] mail = email.split("@");
			this.emailid = mail[0];
			this.domain = mail[1];
		}
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}

	// 연락처
	public String getTel() {
		tel = tel1+"-"+tel2+"-"+tel3;
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
		
		String[] AllTel = tel.split("-");
		this.tel1 = AllTel[0];
		this.tel2 = AllTel[1];
		this.tel3 = AllTel[2];
		
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	

}
