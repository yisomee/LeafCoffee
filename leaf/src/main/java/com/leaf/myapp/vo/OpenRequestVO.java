package com.leaf.myapp.vo;

public class OpenRequestVO {
	private String userid;
	private String username;
	
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	private String email;
	private String emailid;
	private String domain;
	
	private String openhopeaddr;
	private String sido;
	private String gugun;
	
	private String content;
	
	
	

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

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
		email = emailid+"@"+domain;
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
		
		if(email!=null) {
			String[] mail = email.split("@");
			this.emailid = mail[0];
			this.domain = mail[1];
		}
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getOpenhopeaddr() {
		openhopeaddr = sido+"/"+gugun;
		return openhopeaddr;
	}

	public void setOpenhopeaddr(String openhopeaddr) {
		this.openhopeaddr = openhopeaddr;
		
		String[] sidogugun = openhopeaddr.split("/");
		this.sido = sidogugun[0];
		this.gugun = sidogugun[1];
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
