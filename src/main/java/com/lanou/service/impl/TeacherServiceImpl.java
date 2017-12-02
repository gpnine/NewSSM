package com.lanou.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanou.dao.TeacherMapper;
import com.lanou.entity.Teacher;
import com.lanou.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	@Resource
	private TeacherMapper teacherMapper;

	public List<Teacher> findTeachers() {
		// TODO Auto-generated method stub
		return teacherMapper.findTeachers();
	}
}
