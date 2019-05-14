package cn.yjj.pojo;

import java.util.Date;

public class Paper_works {
	private Integer id; 
	private Date time; 
	private String title_dissertation; 
	private String own_part; 
	private String winning; 
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
	public String getTitle_dissertation() {
		return title_dissertation;
	}
	public void setTitle_dissertation(String title_dissertation) {
		this.title_dissertation = title_dissertation;
	}
	public String getOwn_part() {
		return own_part;
	}
	public void setOwn_part(String own_part) {
		this.own_part = own_part;
	}
	public String getWinning() {
		return winning;
	}
	public void setWinning(String winning) {
		this.winning = winning;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
