package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Manager;
import com.oneMind.entity.Student;

public interface StudentDao {
	public List<Student> queryallbyhot();
public Student checkLogin(String student_name,String student_password);
	
	public int updateStudent(Student student);

	public Student checkLoginx(String name,String pwd);
	public Student queryStudentById(int id);
	public boolean addStudentHot(int id);
}

