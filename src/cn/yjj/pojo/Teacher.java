package cn.yjj.pojo;

import java.util.Date;
import java.util.List;

public class Teacher {
	private Integer id; 
	private String name; 
	private Integer gender; 
	private String natives; 
	private Date birthday; 
	private String nation; 
	private String politics; 
	private String discipline; 
	private Integer education; 
	private String titles; 
	private String duty; 
	private String phone; 
	private String photograph; 
	private String rests; 
	private Integer Personal_profile_id; 
	private Integer continue_educationid; 
	private Integer education_competitionid; 
	private Integer guide_students_teachersid; 
	private Integer public_classid; 
	private Integer research_testid; 
	private Integer teaching_subjectsid;
	private Integer title_honorId;
	private Integer paper_worksid;
	private Integer phased_growth_planningid;
	private Integer master_growth_planid;
	
	
	public Integer getTitle_honorId() {
		return title_honorId;
	}
	public void setTitle_honorId(Integer title_honorId) {
		this.title_honorId = title_honorId;
	}
	public Integer getPaper_worksid() {
		return paper_worksid;
	}
	public void setPaper_worksid(Integer paper_worksid) {
		this.paper_worksid = paper_worksid;
	}
	public Integer getPhased_growth_planningid() {
		return phased_growth_planningid;
	}
	public void setPhased_growth_planningid(Integer phased_growth_planningid) {
		this.phased_growth_planningid = phased_growth_planningid;
	}
	public Integer getMaster_growth_planid() {
		return master_growth_planid;
	}
	public void setMaster_growth_planid(Integer master_growth_planid) {
		this.master_growth_planid = master_growth_planid;
	}
	private List<Personal_profile> ppList; //个人简历表
	private List<Title_honor> thList;  //表彰奖励获荣誉表
	private List<Plan> planList; //总体计划表
	private List<Planning> planningList; //计划规划表
	private List<Public_class> pucList; //公开课
	private List<Research_test> retList; //调研测试命题
	private List<Education_competition> edcList; //教学竞赛获奖
	private List<Teaching_subjects> tssList; //教育教学课题
	private List<Paper_works> pwList; //发表论文论著
	private List<Teachers> teachersList; //指导学生、青年教师
	private List<Continue_education> cedList; //继续学习
	private List<Formal_schooling> fosList; //最高学历
	
	
	public List<Formal_schooling> getFosList() {
		return fosList;
	}
	public void setFosList(List<Formal_schooling> fosList) {
		this.fosList = fosList;
	}
	public List<Continue_education> getCedList() {
		return cedList;
	}
	public void setCedList(List<Continue_education> cedList) {
		this.cedList = cedList;
	}
	public List<Teachers> getTeachersList() {
		return teachersList;
	}
	public void setTeachersList(List<Teachers> teachersList) {
		this.teachersList = teachersList;
	}
	public List<Paper_works> getPwList() {
		return pwList;
	}
	public void setPwList(List<Paper_works> pwList) {
		this.pwList = pwList;
	}
	public List<Teaching_subjects> getTssList() {
		return tssList;
	}
	public void setTssList(List<Teaching_subjects> tssList) {
		this.tssList = tssList;
	}
	public List<Education_competition> getEdcList() {
		return edcList;
	}
	public void setEdcList(List<Education_competition> edcList) {
		this.edcList = edcList;
	}
	public List<Research_test> getRetList() {
		return retList;
	}
	public void setRetList(List<Research_test> retList) {
		this.retList = retList;
	}
	public List<Public_class> getPucList() {
		return pucList;
	}
	public void setPucList(List<Public_class> pucList) {
		this.pucList = pucList;
	}
	public List<Plan> getPlanList() {
		return planList;
	}
	public void setPlanList(List<Plan> planList) {
		this.planList = planList;
	}
	public List<Planning> getPlanningList() {
		return planningList;
	}
	public void setPlanningList(List<Planning> planningList) {
		this.planningList = planningList;
	}
	public List<Personal_profile> getPpList() {
		return ppList;
	}
	public void setPpList(List<Personal_profile> ppList) {
		this.ppList = ppList;
	}
	public List<Title_honor> getThList() {
		return thList;
	}
	public void setThList(List<Title_honor> thList) {
		this.thList = thList;
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
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getNatives() {
		return natives;
	}
	public void setNatives(String natives) {
		this.natives = natives;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPolitics() {
		return politics;
	}
	public void setPolitics(String politics) {
		this.politics = politics;
	}
	public String getDiscipline() {
		return discipline;
	}
	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}
	public Integer getEducation() {
		return education;
	}
	public void setEducation(Integer education) {
		this.education = education;
	}
	public String getTitles() {
		return titles;
	}
	public void setTitles(String titles) {
		this.titles = titles;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhotograph() {
		return photograph;
	}
	public void setPhotograph(String photograph) {
		this.photograph = photograph;
	}
	public String getRests() {
		return rests;
	}
	public void setRests(String rests) {
		this.rests = rests;
	}
	public Integer getPersonal_profile_id() {
		return Personal_profile_id;
	}
	public void setPersonal_profile_id(Integer personal_profile_id) {
		Personal_profile_id = personal_profile_id;
	}
	public Integer getContinue_educationid() {
		return continue_educationid;
	}
	public void setContinue_educationid(Integer continue_educationid) {
		this.continue_educationid = continue_educationid;
	}
	public Integer getEducation_competitionid() {
		return education_competitionid;
	}
	public void setEducation_competitionid(Integer education_competitionid) {
		this.education_competitionid = education_competitionid;
	}
	public Integer getGuide_students_teachersid() {
		return guide_students_teachersid;
	}
	public void setGuide_students_teachersid(Integer guide_students_teachersid) {
		this.guide_students_teachersid = guide_students_teachersid;
	}
	public Integer getPublic_classid() {
		return public_classid;
	}
	public void setPublic_classid(Integer public_classid) {
		this.public_classid = public_classid;
	}
	public Integer getResearch_testid() {
		return research_testid;
	}
	public void setResearch_testid(Integer research_testid) {
		this.research_testid = research_testid;
	}
	public Integer getTeaching_subjectsid() {
		return teaching_subjectsid;
	}
	public void setTeaching_subjectsid(Integer teaching_subjectsid) {
		this.teaching_subjectsid = teaching_subjectsid;
	}
	
	
}
