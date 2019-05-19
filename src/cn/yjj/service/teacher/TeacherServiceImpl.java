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
	public Teacher selectTeacher(String id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacher(id);
	}

	@Override
	public int updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateTeacher(teacher);
	}

	@Override
	public List<Teacher> selectTeacherList(String name, String gender, String politics, String education,
			int currentPageNo, int pageSize) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherList(name, gender, politics, education, currentPageNo, pageSize);
	}

	@Override
	public Integer selectTeacherCount() {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherCount();
	}

	@Override
	public Integer deleteTeacher(String id) {
		// TODO Auto-generated method stub
		return teacherMapper.deleteTeacher(id);
	}

}
