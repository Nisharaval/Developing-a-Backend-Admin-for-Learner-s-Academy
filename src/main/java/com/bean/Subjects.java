package com.bean;

public class Subjects {

	private int subject_id;
	private String subject_name;
	public int getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	
	@Override
	public String toString() {
		return "Subjects [subject_id=" + subject_id + ", subject_name=" + subject_name + "]";
	}
	
}
