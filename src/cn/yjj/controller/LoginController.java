package cn.yjj.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.yjj.pojo.Formal_schooling;
import cn.yjj.pojo.Teacher;
import cn.yjj.service.fs.Formal_schoolingService;
import cn.yjj.service.teacher.TeacherService;

@Controller
@RequestMapping("/Login")
public class LoginController {
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private Formal_schoolingService formal_schoolingService;
	
	@RequestMapping(value="/index")
	public String index(String name,String gender,String politics,String education,Model model){
		List<Teacher> teacherList=teacherService.selectTeacherList(name, gender, politics, education);
		List<Formal_schooling> fsList=formal_schoolingService.selectFormal_schoolingList();
		model.addAttribute("education",education);
		model.addAttribute("teacherList", teacherList);
		model.addAttribute("fsList", fsList);
		return "index";
	}
	
	@RequestMapping(value="/showDetail/{id}",method=RequestMethod.GET)
	public String showDetail(@PathVariable String id,Model model){
		Teacher teacher=teacherService.selectTeacher(id);
		List<Formal_schooling> fsList=formal_schoolingService.selectFormal_schoolingList();
		model.addAttribute("teacher", teacher);
		model.addAttribute("fsList", fsList);
		return "showDetail";
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	@ResponseBody
	public String modify(Teacher teacher,Model model){
		Map<String,String> modifyMap=new HashMap<String, String>();
		int num=teacherService.updateTeacher(teacher);
		if(num>0){
			modifyMap.put("num", "0");
		}else{
			modifyMap.put("num", "1");
		}
		return JSONArray.toJSONString(modifyMap);
	}
}
