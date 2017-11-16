package com.oneMind.biz;

import java.util.List;

import com.oneMind.entity.Manager;
import com.oneMind.entity.Student;

public interface StudentBiz {
	public List<Student> queryallbyhot();
	public Student checkLogin(String student_name,String student_pasword);
	
	public int updateStudent(Student student);

	public Student queryStudentById(int id);
	public boolean addStudentHot(int id);

	
	public Student checkLoginx(String name,String pwd);

}
