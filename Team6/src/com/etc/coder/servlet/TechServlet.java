package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.etc.coder.biz.ComjobBiz;
import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.TechnologytypeBiz;


import com.etc.coder.biz.impl.ComjobBizImpl;
import com.etc.coder.biz.impl.CompanyBizImpl;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.biz.impl.TechnologytypeBizImpl;


import com.etc.coder.entity.Company_job;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Technolgytype;
import com.google.gson.Gson;

public class TechServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public TechServlet() {
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
		  if(flag.equals("techno")){
			  TechnologytypeBiz biz=new TechnologytypeBizImpl();
			  List<Technolgytype> list=biz.querytechno();
			  Gson gson=new Gson();
			  String str=gson.toJson(list);
			  out.print(str);
			  out.flush();
			  out.close();
		  }
		  if(flag.equals("newjobsearch")){
			  List<Company_job> list=null;
			  String flag1=request.getParameter("flag1");
			  if(flag1.equals("selectall")){
				  JobBiz biz=new JobBizImpl();
				    list=biz.queryjob();
				
			  }
			  if(flag1.equals("selectbyjob")){
				  String str1=request.getParameter("mytechname");
				  JobBiz biz=new JobBizImpl();
				  list=biz.querybytech_name(str1);				   
			  }
			   Gson gson=new Gson();
			   String str=gson.toJson(list);
			   out.print(str);
			  // out.print("sdsfdsfsd");
			   out.flush();
			   out.close();
			  
			  
		  }
		  
		  
		  if(flag.equals("searchtext")){
			  
			  String str=request.getParameter("st");
			  String str1=request.getParameter("kd");
			  if(str1.length()!=0){
			  if(str.equals("职位")){
				  JobBiz biz=new JobBizImpl(); 
				  List<Company_job> list=biz.queryJO(str1);
				  request.setAttribute("list", list);
				  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
			  }else if(str.equals("公司")){
				 ComjobBiz biz=new ComjobBizImpl();
				 List<Company_job> list=biz.querycom(str1);
				 request.setAttribute("clist", list);
				 request.getRequestDispatcher("searchpage.jsp").forward(request, response);
			  }
		  }else{
			  out.print("<script>alert('请在搜索框输入要查询的关键字！');history.go(-1);</script>");
		      out.flush();
		      out.close();
		  }
		  }
		  
		  
		  
		  if(flag.equals("dotype")){
			  String str=request.getParameter("text");
			  Object obj=request.getParameter("page");
			  //每页显示条数
			  int pagesize=10;
			  //当前页数
			  int curpage=0;
			  JobBiz biz=new JobBizImpl();
			  //总共的记录条数
			  int count=biz.queryCountJob();
			  //总页数
			  int pagecount=count%pagesize==0?count/pagesize:((count/pagesize)+1);
			  
			  if(obj==null){
				  curpage=1;
				  
			  }else{
				  curpage=curpage<0?1:curpage;
				  curpage=curpage>pagecount?pagecount:curpage;
			  }
			  TechnologytypeBiz biz1=new TechnologytypeBizImpl();
			  int i=biz1.querytypeid(str);
			  List<Company_job> list=biz.querrycj(i,curpage,pagesize);
			  if(list.size()!=0){
			  request.setAttribute("text", str);
			  request.setAttribute("list", list);
			  request.setAttribute("curpage", curpage);
			  request.setAttribute("pagecount", pagecount);
			  request.getRequestDispatcher("searchpage.jsp").forward(request, response);
			  }else{
				  out.print("<script>alert('对不起没有搜索到您查询的岗位！');location.href='index.jsp';</script>"); 
				  out.flush();
			      out.close();
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
