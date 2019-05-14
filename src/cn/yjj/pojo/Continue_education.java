package cn.yjj.pojo;

import java.util.Date;

public class Continue_education {
	private Integer id; 
	private Date time; 
	private String content_grades; 
	private String organizer; 
	private String certificate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getContent_grades() {
		return content_grades;
	}
	public void setContent_grades(String content_grades) {
		this.content_grades = content_grades;
	}
	public String getOrganizer() {
		return organizer;
	}
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
