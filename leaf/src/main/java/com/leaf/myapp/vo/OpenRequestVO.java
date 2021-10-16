package com.leaf.myapp.vo;

public class OpenRequestVO {
	private String userid;
	private String username;
	
	private String openhopetel; // 오픈 희망연락처
	private String tel1;
	private String tel2;
	private String tel3;
	
	private String email;
	private String emailid;
	private String domain;
	
	private String openhopeaddr; // 오픈희망지역
	private String sido; // 	시/도
	private String gugun; // 	구/군
	
	private int oq_num; // 게시번호
	private String content; // 문의내용
	private String writedate; // 게시글 작성일
	private String oq_status; // 답변상태 (답변대기/답변완료)
	
	
	

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

	public String getOpenhopetel() {
		openhopetel = tel1+"-"+tel2+"-"+tel3;
		return openhopetel;
	}

	public void setOpenhopetel(String openhopetel) {		
		this.openhopetel = openhopetel;
		
		String[] AllTel = openhopetel.split("-");
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
	
	public int getOq_num() {
		return oq_num;
	}

	public void setOq_num(int oq_num) {
		this.oq_num = oq_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getOq_status() {
		return oq_status;
	}

	public void setOq_status(String oq_status) {
		this.oq_status = oq_status;
	}
	
	
	
}
