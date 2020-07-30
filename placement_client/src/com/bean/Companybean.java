package com.bean;

import java.sql.Date;

public class Companybean {

	private int cid,stipend,ctc;
	private float cpi_ug,cpi_pg;
	private Date reg_start_date,reg_end_date,placement_date;
	private String name,location,open_for,job,type,category,status,description;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getStipend() {
		return stipend;
	}
	public void setStipend(int stipend) {
		this.stipend = stipend;
	}
	public int getCtc() {
		return ctc;
	}
	public void setCtc(int ctc) {
		this.ctc = ctc;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public float getCpi_ug() {
		return cpi_ug;
	}
	public void setCpi_ug(float cpi_ug) {
		this.cpi_ug = cpi_ug;
	}
	public float getCpi_pg() {
		return cpi_pg;
	}
	public void setCpi_pg(float cpi_pg) {
		this.cpi_pg = cpi_pg;
	}
	public Date getReg_start_date() {
		return reg_start_date;
	}
	public void setReg_start_date(Date reg_start_date) {
		this.reg_start_date = reg_start_date;
	}
	public Date getReg_end_date() {
		return reg_end_date;
	}
	public void setReg_end_date(Date reg_end_date) {
		this.reg_end_date = reg_end_date;
	}
	public Date getPlacement_date() {
		return placement_date;
	}
	public void setPlacement_date(Date placement_date) {
		this.placement_date = placement_date;
	}
	public String getOpen_for() {
		return open_for;
	}
	public void setOpen_for(String open_for) {
		this.open_for = open_for;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
}
