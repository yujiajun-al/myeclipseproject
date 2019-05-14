package cn.yjj.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.yjj.pojo.User;

/**
 * 自定义拦截器
 * @author ausu
 *
 */
public class SysInterceptor extends HandlerInterceptorAdapter{
	private Logger logger=Logger.getLogger(SysInterceptor.class);
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,
							Object handler) throws Exception{
		logger.debug("SysInterceptor preHandle!");
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"401.jsp");
			return false;
		}
		return true;
	}
}
