package cn.yjj.service.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yjj.dao.teacher.TeacherMapper;
import cn.yjj.pojo.Teacher;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{
	@Autowired
	private TeacherMapper teacherMapper;
	
	@Override
	public List<Teacher> selectTeacherList(String name, String gender, String politics, String education) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherList(name, gender, politics, education);
	}

	@Override
	public Teacher selectTeacher(String id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacher(id);
	}

	@Override
	public int updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateTeacher(teacher);
	}

}
