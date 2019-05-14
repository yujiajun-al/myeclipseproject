package cn.yjj.pojo;

import java.util.Date;

public class Teachers {
	private Integer id; 
	private Date time; 
	private String name; 
	private String study_guides; 
	private String gain_success; 
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudy_guides() {
		return study_guides;
	}
	public void setStudy_guides(String study_guides) {
		this.study_guides = study_guides;
	}
	public String getGain_success() {
		return gain_success;
	}
	public void setGain_success(String gain_success) {
		this.gain_success = gain_success;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
