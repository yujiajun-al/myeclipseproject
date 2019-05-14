package cn.yjj.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.yjj.pojo.User;
import cn.yjj.service.user.UserService;

@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public String login(String loginName,String passWord,String codetext,HttpSession session){
		Map<String, Object> loginMap=new HashMap<String, Object>();
		
		//获取服务器生成的验证码
		String ServiceCode=session.getAttribute("validateCode").toString();

		//验证用户输入的验证码与服务器生成的验证码是否一样
		if (codetext.equalsIgnoreCase(ServiceCode)) { //将此字符串与另一个字符串进行比较，忽略大小写因素。如果两个字符串长度相同，且两个字符串中对应的字符相同，则认为它们是相等的忽略大小写。
			User user=userService.findByLoginName(loginName);
			if(user!=null){
				if(user.getPassWord().equals(passWord)){
					session.setAttribute("user", user);
					loginMap.put("num", "1");
				}else {
					System.err.println("密码错误！请重新输入");
					loginMap.put("num", "3");
				}
			}else {
				System.err.println("用户不存在！");
				loginMap.put("num", "2");
			}
		}else{
			loginMap.put("num", "0");
		}
		return JSONArray.toJSONString(loginMap);
	}
	
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	@ResponseBody
	public String save(String userName,String loginName,String passWord,String type){
		Map<String, Object> registMap=new HashMap<String, Object>();
		User oldUser = userService.findByLoginName(loginName);
        //判断用户
        if (oldUser!=null) {
            System.out.println("用户已经存在");
            registMap.put("result", "2");
        }
        int num=userService.save(userName,loginName,passWord,type);
        if(num>0){
        	registMap.put("result", "0");
        }else{
        	registMap.put("result", "1");
        }
        return JSONArray.toJSONString(registMap);
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.POST)
	@ResponseBody
	public String Logout(HttpSession session){
		Map<String, Object> logoutMap=new HashMap<String, Object>();
		session.removeAttribute("user");
		if(session.getAttribute("user")==null){
			logoutMap.put("num", "0");
		}
		return JSONArray.toJSONString(logoutMap);
	}
	
	@RequestMapping(value="/Validate")
	public void Validate(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//验证码图片的宽度
		int width=200;
		//高度
		int height=80;
		//验证码的字符个数 
		int codeCount=4;
		int x1=0;
		//字体高度
		int fontHeight;
	    int codeY;
		
		char[] codeSequence={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P',
				'Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'};
		
		//创建一个随机数生成器类
				Random random=new Random();
				//1.生成一幅图片
				x1=width/(codeCount+1);
				fontHeight=height-2;
				codeY=height-4;
				//定义图像buffer
				BufferedImage buffimg=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
				Graphics2D g=buffimg.createGraphics();
				//将图像填充为白色
				g.setColor(Color.white);
				g.fillRect(0, 0, width, height);
				//创建字体，字体的大小应该根据图片的高度来定
				Font font=new Font("Fixedsys", Font.PLAIN, fontHeight);
				//设置字体
				g.setFont(font);
				//画边框
				g.setColor(Color.black);
				g.drawRect(0, 0, width-1, height-1);//aa
				//随机产生160条干扰线，试图向中的认证码不易于被其他程序察觉到
				g.setColor(Color.black);
				for (int i = 0; i < 160; i++) {
					int x=random.nextInt(width);
					int y=random.nextInt(height);
					int xl=random.nextInt(12);
					int yl=random.nextInt(12);
					g.drawLine(x, y, x+xl, y+yl);
				}
				//2.生产随机数
				//randomCode用于保存随机产生的验证码，以便用户登陆时进行验证
				StringBuffer randomCode=new StringBuffer();
				int red=0,green=0,blue=0;
				//随机产生codeCount数字的验证码
				for (int i = 0; i < codeCount; i++) {
					//得到随机产生的验证码数字
					String strRand=String.valueOf(codeSequence[random.nextInt(36)]);
					//产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同
					red=random.nextInt(255);
					green=random.nextInt(255);
					blue=random.nextInt(255);
					//用随机产生的颜色将验证码绘制到图像中
					g.setColor(new Color(red,green,blue));
					g.drawString(strRand, (i+1)*x1, codeY);
					//将产生的四个随机数结合在一起
					randomCode.append(strRand);
					
				}
				//3.把随机数放在session域中
				//将四位数字的验证码保存在sesiion域中
				HttpSession session=request.getSession();
				session.setAttribute("validateCode", randomCode.toString());
				//4.输出图片
				//禁止图像缓存
				response.setHeader("Pragma","no-cache");
				response.setHeader("Cache-Control", "no-cache");
				response.setDateHeader("Expires", 0);
				response.setContentType("image/jpeg");
				//将图像输出到Servlet输出流中
				ServletOutputStream out=response.getOutputStream();
				ImageIO.write(buffimg, "jpeg", out);
				out.flush();
				out.close();
	}
}
