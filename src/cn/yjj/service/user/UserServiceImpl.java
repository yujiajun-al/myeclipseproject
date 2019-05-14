package cn.yjj.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yjj.dao.user.UserMppper;
import cn.yjj.pojo.User;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMppper userMppper;
	
	@Override
	public User findByLoginName(String loginName) {
		// TODO Auto-generated method stub
		return userMppper.findByLoginName(loginName);
	}

	@Override
	public int save(String loginName, String userName, String passWord, String type) {
		// TODO Auto-generated method stub
		return userMppper.save(loginName, userName, passWord, type);
	}


}
