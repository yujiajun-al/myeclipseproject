package cn.yjj.dao.user;

import org.apache.ibatis.annotations.Param;

import cn.yjj.pojo.User;

public interface UserMppper {
	/**
	 * 登录
	 * @param loginName
	 * @param password
	 * @return
	 */
	public User findByLoginName(@Param("loginName") String loginName); 
	/**
	 * 新增用户信息
	 * @param user
	 * @return
	 */
	int save(@Param("loginName") String loginName,
			@Param("userName") String userName,
			@Param("passWord") String passWord,
			@Param("type") String type);
}
