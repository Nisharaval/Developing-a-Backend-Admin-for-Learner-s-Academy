package com.bean;

public class Reports {
	private int rid;
	private String rsubjectname;
	private String rteachername;
	
	
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getRsubjectname() {
		return rsubjectname;
	}
	public void setRsubjectname(String rsubjectname) {
		this.rsubjectname = rsubjectname;
	}
	public String getRteachername() {
		return rteachername;
	}
	public void setRteachername(String rteachername) {
		this.rteachername = rteachername;
	}
	
	
	@Override
	public String toString() {
		return "Reports [rid=" + rid + ", rsubjectname=" + rsubjectname + ", rteachername=" + rteachername + "]";
	}
	

}
