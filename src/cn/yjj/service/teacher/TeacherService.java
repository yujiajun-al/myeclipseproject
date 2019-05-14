package cn.yjj.service.teacher;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.yjj.pojo.Teacher;

public interface TeacherService {
	/**
	 * 查询所有/姓名/性别/学历/教育程度/..教师
	 * @return
	 */
	public List<Teacher> selectTeacherList(@Param("name")String name,
										@Param("gender")String gender,
										@Param("politics")String politics,
										@Param("education")String education);
	
	/**
	 * 根据id查询教师信息
	 * @param id
	 * @return
	 */
	public Teacher selectTeacher(@Param("id")String id);
	
	/**
	 * 修改教师信息
	 */
	public int updateTeacher(Teacher teacher);
}
