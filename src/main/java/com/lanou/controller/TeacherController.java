package com.lanou.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou.entity.Teacher;
import com.lanou.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	@RequestMapping("/finds.do")
	public String finds(Model model) {
		List<Teacher> teachers = teacherService.findTeachers();
		model.addAttribute("teachers",teachers);
		return "index";
	}
	
}
