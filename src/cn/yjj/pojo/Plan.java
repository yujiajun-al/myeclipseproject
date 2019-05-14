package cn.yjj.pojo;

import java.util.Date;

public class Plan {
	private Integer id; 
	private String name; 
	private Date time; 
	private String my_educational_philosophy; 
	private String self_analysis; 
	private String my_growth_plan;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getMy_educational_philosophy() {
		return my_educational_philosophy;
	}
	public void setMy_educational_philosophy(String my_educational_philosophy) {
		this.my_educational_philosophy = my_educational_philosophy;
	}
	public String getSelf_analysis() {
		return self_analysis;
	}
	public void setSelf_analysis(String self_analysis) {
		this.self_analysis = self_analysis;
	}
	public String getMy_growth_plan() {
		return my_growth_plan;
	}
	public void setMy_growth_plan(String my_growth_plan) {
		this.my_growth_plan = my_growth_plan;
	}
}
