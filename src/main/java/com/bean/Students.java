package com.bean;




public class Students {
	private int student_id;
	private String First_Name;
	private String Last_Name;
	private String DOB;
	private String Address;
	private long phonenumber;
	private String classes;
	
	
	
	
	
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getFirst_Name() {
		return First_Name;
	}
	public void setFirst_Name(String first_Name) {
		First_Name = first_Name;
	}
	public String getLast_Name() {
		return Last_Name;
	}
	public void setLast_Name(String last_Name) {
		Last_Name = last_Name;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public long getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(long phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	
	@Override
	public String toString() {
		return "Students [student_id=" + student_id + ", First_Name=" + First_Name + ", Last_Name=" + Last_Name
				+ ", DOB=" + DOB + ", Address=" + Address + ", phonenumber=" + phonenumber + ", classes=" + classes
				+ "]";
	}
	
	
	
	


}
