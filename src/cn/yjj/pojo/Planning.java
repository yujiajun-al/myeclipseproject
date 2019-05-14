package cn.yjj.pojo;

public class Planning {
	private Integer id; 
	private String name; 
	private String planning_time; 
	private String growth_plan; 
	private Integer self_testId; 
	private String Conclusion_reflections;

	
	public String getConclusion_reflections() {
		return Conclusion_reflections;
	}
	public void setConclusion_reflections(String conclusion_reflections) {
		Conclusion_reflections = conclusion_reflections;
	}
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
	public String getPlanning_time() {
		return planning_time;
	}
	public void setPlanning_time(String planning_time) {
		this.planning_time = planning_time;
	}
	public String getGrowth_plan() {
		return growth_plan;
	}
	public void setGrowth_plan(String growth_plan) {
		this.growth_plan = growth_plan;
	}
	public Integer getSelf_testId() {
		return self_testId;
	}
	public void setSelf_testId(Integer self_testId) {
		this.self_testId = self_testId;
	}
	
}
