package com.leaf.myapp.vo;

public class NoticePagingVO {
	private int nowPage=1;//현재보고있는페이지
	private int totalPage;//총페이지수
	private int pageRecord=15;
	private int onePageNumCount=5;
	private int startPage=1;
	private int totalRecord;//쿼리문으로 세팅함
	private int nowRecordMul = nowPage*pageRecord;
	
	
	//검색 
	private String searchKeyword;
		
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		System.out.println(totalPage);
		
		if(nowPage!=0) {
			startPage = (nowPage-1)/onePageNumCount*onePageNumCount+1;
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		
		this.totalPage = totalPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		totalPage = (int)Math.ceil(totalRecord/(double)pageRecord);
		if(nowPage == totalPage) {
			pageRecord = totalRecord%pageRecord;
		}
		this.totalRecord = totalRecord;
	}
	public int getPageRecord() {
		return pageRecord;
	}
	public void setPageRecord(int pageRecord) {
		this.pageRecord = pageRecord;
	}
	public int getOnePageNumCount() {
		return onePageNumCount;
	}
	public void setOnePageNumCount(int onePageNumCount) {
		this.onePageNumCount = onePageNumCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
		
}
