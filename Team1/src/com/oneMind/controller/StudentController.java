package com.oneMind.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.oneMind.biz.StudentBiz;
import com.oneMind.entity.Student;

@Controller
public class StudentController {
	@Resource
	
private StudentBiz biz;

	
	@RequestMapping(value="logincheckx" )
	public void checkloginx(String name,String pwd,HttpSession session,HttpServletResponse response){
		
		PrintWriter out =null;
		response.setContentType("text/html;charset=utf-8");
		Student student=biz.checkLoginx(name, pwd);
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(student!=null){
			
			session.setAttribute("student", student);
			
			out.print("<script>location.href='index.jsp'</script>");
		}else{
			
			out.print("<script>alert('登入失败');history.go(-1);</script>");
		}
		
		out.flush();
		out.close();
	}


}
