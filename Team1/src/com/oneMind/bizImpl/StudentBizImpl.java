package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.StudentBiz;
import com.oneMind.dao.StudentDao;
import com.oneMind.entity.Student;
@Service
public class StudentBizImpl implements StudentBiz {
	@Resource
	private StudentDao dao;
	
	
	public StudentDao getDao() {
		return dao;
	}


	public void setDao(StudentDao dao) {
		this.dao = dao;
	}


	@Override
	public Student checkLogin(String student_name,String student_password) {
		
		return dao.checkLogin(student_name,student_password);
	}


	@Override
	public int updateStudent(Student student) {
		// TODO Auto-generated method stub
		return dao.updateStudent(student);
	}
	@Override
	public List<Student> queryallbyhot() {
		// TODO Auto-generated method stub
		return dao.queryallbyhot();
	}



	@Override
	public Student queryStudentById(int id) {
		// TODO Auto-generated method stub
		return dao.queryStudentById(id);
	}


	@Override
	public boolean addStudentHot(int id) {
		// TODO Auto-generated method stub
		return dao.addStudentHot(id);
	}



	@Override
	public Student checkLoginx(String name, String pwd) {
		// TODO Auto-generated method stub
		return dao.checkLoginx(name, pwd);
	}

}
