package com.lanou.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou.entity.Teacher;
import com.lanou.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	@Resource
	private TeacherService teacherService;

	@RequestMapping("/find.do")
	public String finds(Model model) {
		List<Teacher> teachers = teacherService.findTeachers();
		model.addAttribute("teachers", teachers);
		return "index";
	}
}
