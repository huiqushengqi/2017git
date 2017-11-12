package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.TechnologytypeBiz;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.biz.impl.TechnologytypeBizImpl;

public class CreateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("jobtype");
		String jobname=request.getParameter("jobname");
		String salarymin=request.getParameter("salaryMin");
		String salarymax=request.getParameter("salaryMax");
		String jobaddress=request.getParameter("workAddress");
		String jobexp=request.getParameter("workYear");
		String jobeducation=request.getParameter("education");
		String jobdescription=request.getParameter("jdescription");
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String job_date=format.format(new Date());
		String salary=salarymin+"k-"+salarymax;
		
		TechnologytypeBiz biz=new TechnologytypeBizImpl();
		PrintWriter out = response.getWriter();
		int jobtype=biz.querytypeid(type);
		JobBiz biz1=new JobBizImpl();
		if(biz1.addjob(jobname, jobtype, jobdescription, jobaddress, salary, jobeducation, jobexp, job_date)){
			request.getRequestDispatcher("/Team6/companyhome.jsp").forward(request, response);
		}else{
			out.println("<script>alert('发布失败');history.go(-1);</script>");
		}
		
	}

}
