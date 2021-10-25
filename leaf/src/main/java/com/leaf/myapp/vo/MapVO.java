package com.leaf.myapp.vo;

public class MapVO {
	private String fc_name;
	private String fc_addr;
	private String lat;
	private String lon;
	private String searchMap;

	public String getSearchMap() {
		return searchMap;
	}
	public void setSearchMap(String searchMap) {
		this.searchMap = searchMap;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
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
