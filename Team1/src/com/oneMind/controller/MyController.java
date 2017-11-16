package com.oneMind.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oneMind.biz.ManagerBiz;

import com.oneMind.entity.Manager;


@Controller
public class MyController  {
@Resource
private ManagerBiz biz;

public ManagerBiz getBiz() {
	return biz;
}

public void setBiz(ManagerBiz biz) {
	this.biz = biz;
}

@RequestMapping(value="Admin/logincheck" )
public void checklogin(String name,String pwd,HttpSession session,HttpServletResponse response){
	
	PrintWriter out =null;
	response.setContentType("text/html;charset=utf-8");
	Manager manager=biz.checkLogin(name, pwd);
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(manager!=null){
		
		session.setAttribute("manager", manager);
		
		out.print("<script>location.href='dashboard.jsp'</script>");
	}else{
		
		out.print("<script>alert('登入失败');history.go(-1);</script>");
	}
	
	out.flush();
	out.close();
}


}
