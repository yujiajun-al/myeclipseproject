package cn.yjj.pojo;

import java.util.Date;

public class Education_competition {
	private Integer id; 
	private Date time; 
	private String race_name; 
	private String which; 
	private String organizational_units; 
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
	public String getRace_name() {
		return race_name;
	}
	public void setRace_name(String race_name) {
		this.race_name = race_name;
	}
	public String getWhich() {
		return which;
	}
	public void setWhich(String which) {
		this.which = which;
	}
	public String getOrganizational_units() {
		return organizational_units;
	}
	public void setOrganizational_units(String organizational_units) {
		this.organizational_units = organizational_units;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
