package com.lanou.entity;

public class Teacher {

	private Integer tId;
	private String teacherName;
	public Integer gettId() {
		return tId;
	}
	public void settId(Integer tId) {
		this.tId = tId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Teacher [tId=" + tId + ", teacherName=" + teacherName + "]";
	}
	
	
	
}
