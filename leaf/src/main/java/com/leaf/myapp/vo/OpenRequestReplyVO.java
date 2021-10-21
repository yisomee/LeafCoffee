package com.leaf.myapp.vo;

public class OpenRequestReplyVO {
	private int rp_num;  // 답변번호
	private String rpdate; // 작성일
	private String rpldate; // 최종수정일
	private String rpcon; // 답변내용
	private int oq_num; // 원글 게시번호
	
	private String userid; // 가맹관리부 작성자 아이디
	private String username; // 가맹관리부 작성자 직원 이름
	
	private int replyinsertresult=1; // 답변등록 여부 (1:성공, 0:실패)
		
	private int replyeditresult=1;// 답글수정성공
	private int replydeleteresult=1;// 답글삭제성공
	
	
	public int getRp_num() {
		return rp_num;
	}
	public void setRp_num(int rp_num) {
		this.rp_num = rp_num;
	}
	public String getRpdate() {
		return rpdate;
	}
	public void setRpdate(String rpdate) {
		this.rpdate = rpdate;
	}
	public String getRpldate() {
		return rpldate;
	}
	public void setRpldate(String rpldate) {
		this.rpldate = rpldate;
	}
	public String getRpcon() {
		return rpcon;
	}
	public void setRpcon(String rpcon) {
		this.rpcon = rpcon;
	}
	public int getOq_num() {
		return oq_num;
	}
	public void setOq_num(int oq_num) {
		this.oq_num = oq_num;
	}
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
	public int getReplyinsertresult() {
		return replyinsertresult;
	}
	public void setReplyinsertresult(int replyinsertresult) {
		this.replyinsertresult = replyinsertresult;
	}
	public int getReplyeditresult() {
		return replyeditresult;
	}
	public void setReplyeditresult(int replyeditresult) {
		this.replyeditresult = replyeditresult;
	}
	public int getReplydeleteresult() {
		return replydeleteresult;
	}
	public void setReplydeleteresult(int replydeleteresult) {
		this.replydeleteresult = replydeleteresult;
	}
	
	
	
	
}
