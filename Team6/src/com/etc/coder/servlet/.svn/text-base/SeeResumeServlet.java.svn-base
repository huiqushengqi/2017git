package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.coder.dao.SeeResumeDao;
import com.etc.coder.dao.impl.SeeResumeDaoImpl;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public class SeeResumeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SeeResumeServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String flag=request.getParameter("flag");
		int flag1=Integer.valueOf(flag);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		SeeResumeDao dao=new SeeResumeDaoImpl();
		
		List<Resume> list=dao.queryAllresume(flag1);
		for(int i=0;i<list.size();i++){
			BasicInfor basic=dao.queryBasicInfor(list.get(i).getResume_basic());			
			Jobexpect expect=dao.queryJobExpect(list.get(i).getResume_job());			
			Workexp work=dao.queryWorkexp(list.get(i).getResume_work());			
			Education edu=dao.queryEducation(list.get(i).getResume_edu());
			request.setAttribute("basic"+i, basic);
			request.setAttribute("expect"+i, expect);
			request.setAttribute("work"+i, work);
			request.setAttribute("edu"+i, edu);
		}
		request.setAttribute("list", list);
		request.getRequestDispatcher("seeresume.jsp").forward(request, response);
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
