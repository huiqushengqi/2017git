package com.oneMind.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.oneMind.biz.CollectionBiz;
import com.oneMind.biz.PostBiz;
import com.oneMind.biz.StudentBiz;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

@Controller
public class ZclController {
	@Resource
private CollectionBiz biz;
	@Resource
private PostBiz biz2;
	@Resource
	private StudentBiz biz3;
	
	public StudentBiz getBiz3() {
		return biz3;
	}

	public void setBiz3(StudentBiz biz3) {
		this.biz3 = biz3;
	}

	public CollectionBiz getBiz() {
		return biz;
	}

	public void setBiz(CollectionBiz biz) {
		this.biz = biz;
	}
	
	public PostBiz getBiz2() {
		return biz2;
	}

	public void setBiz2(PostBiz biz2) {
		this.biz2 = biz2;
	}

	
	@ResponseBody
	@RequestMapping(value = "queryallbyhot", produces = "application/json; charset=utf-8")
	public String queryallbyhot(HttpSession session,HttpServletResponse response){
		System.out.println("进入了");
		List<Post> list=biz2.queryallbyhot();
		for (Post post : list) {
			System.out.print(post.getPost_student().getStudent_name());
		}
		Gson g = new Gson();
		String str=g.toJson(list);
		return str;
	}
	
	@ResponseBody
	@RequestMapping(value = "querystudentbyhot", produces = "application/json; charset=utf-8")
	public String querystudentbyhot(HttpSession session,HttpServletResponse response){
		List<Student> list=biz3.queryallbyhot();
		Gson g = new Gson();
		String str=g.toJson(list);
		return str;
	}
	
	@RequestMapping(value="/queryStudentById")
	public String queryStudentById(int id,HttpServletRequest request){
		Student student=biz3.queryStudentById(id);
		if(biz3.addStudentHot(id)){
		request.setAttribute("student", student);
		}
		return "Student";
	}
	
}
