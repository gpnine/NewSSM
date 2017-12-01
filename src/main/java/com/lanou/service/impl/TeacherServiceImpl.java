package com.lanou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou.dao.TeacherMapper;
import com.lanou.entity.Teacher;
import com.lanou.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherMapper teacherMapper;
	
	public List<Teacher> findTeachers() {
		// TODO Auto-generated method stub
		return teacherMapper.findTeachers();
	}

	
	
}
