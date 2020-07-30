package com.bean;

public class Educationbean {
	
	private String email,dname,institute;
	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	private int start_year,end_year;
	private float cpi;
	
	public int getStart_year() {
		return start_year;
	}

	public void setStart_year(int start_year) {
		this.start_year = start_year;
	}

	public int getEnd_year() {
		return end_year;
	}

	public void setEnd_year(int end_year) {
		this.end_year = end_year;
	}

	public float getCpi() {
		return cpi;
	}

	public void setCpi(float cpi) {
		this.cpi = cpi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}
	

}
