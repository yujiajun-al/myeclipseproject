package cn.yjj.pojo;

import java.util.Date;

public class Teaching_subjects {
	private Integer id; 
	private Date time; 
	private String course_name; 
	private String project_department; 
	private String undertake_task; 
	private String concluding_situation; 
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
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getProject_department() {
		return project_department;
	}
	public void setProject_department(String project_department) {
		this.project_department = project_department;
	}
	public String getUndertake_task() {
		return undertake_task;
	}
	public void setUndertake_task(String undertake_task) {
		this.undertake_task = undertake_task;
	}
	public String getConcluding_situation() {
		return concluding_situation;
	}
	public void setConcluding_situation(String concluding_situation) {
		this.concluding_situation = concluding_situation;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
