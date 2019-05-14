package cn.yjj.pojo;

import java.util.Date;

public class Personal_profile {
	private Integer id; 
	private Date starting_time; 
	private Date termination_years; 
	private String department; 
	private String any_position; 
	private Integer title_honorId; 
	private String note;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getStarting_time() {
		return starting_time;
	}
	public void setStarting_time(Date starting_time) {
		this.starting_time = starting_time;
	}
	public Date getTermination_years() {
		return termination_years;
	}
	public void setTermination_years(Date termination_years) {
		this.termination_years = termination_years;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getAny_position() {
		return any_position;
	}
	public void setAny_position(String any_position) {
		this.any_position = any_position;
	}
	public Integer getTitle_honorId() {
		return title_honorId;
	}
	public void setTitle_honorId(Integer title_honorId) {
		this.title_honorId = title_honorId;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
