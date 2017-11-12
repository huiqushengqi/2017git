package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.coder.biz.ComjobBiz;
import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.impl.ComjobBizImpl;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.entity.Company_job;
import com.google.gson.Gson;

public class SearchServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchServlet() {
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
	      response.setContentType("text/html;charset=utf-8");
		  PrintWriter out=response.getWriter();

		  
		  if(flag!=null){
			  if(flag.equals("dosearch")){
				  String str=request.getParameter("sk");
				  String str1=request.getParameter("kd1");
				  String str2=request.getParameter("city");
				  if(str1.length()!=0){
				      if(str.equals("职位")){
				    	  if(str2.equals("全国")){
				    		  JobBiz biz=new JobBizImpl(); 
							  List<Company_job> list=biz.queryJO(str1);
							  request.setAttribute("alist", list);
							  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
				    	  }else{
				    	  ComjobBiz biz=new ComjobBizImpl(); 
						  List<Company_job> list=biz.querrycity(str2, str1);
						  request.setAttribute("alist", list);
						  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
				      }
				      }else if(str.equals("公司")){
				    	  if(str2.equals("全国")){
				    		  ComjobBiz biz=new ComjobBizImpl();
							  List<Company_job> list=biz.querycom(str1);
							  request.setAttribute("dlist", list);
							  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
				    	  }else{
				    		  ComjobBiz biz=new ComjobBizImpl(); 
							  List<Company_job> list=biz.querryct(str2, str1);
							  request.setAttribute("dlist", list);
							  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
				      }
				  }else{
					  out.print("<script>alert('请在搜索框输入要查询的关键字！'),location.href='searchpage.jsp'</script>");
				      out.flush();
				      out.close(); 
				  }
			  }
			  
			  
			  } 
		  }
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

		doGet(request, response);
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
