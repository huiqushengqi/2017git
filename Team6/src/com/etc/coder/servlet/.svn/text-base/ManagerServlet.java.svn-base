package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.coder.biz.ManagerBiz;
import com.etc.coder.biz.impl.ManagerBizImpl;
import com.etc.coder.dao.ManagerDao;
import com.etc.coder.dao.impl.ManagerDaoImpl;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Manager;

public class ManagerServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ManagerServlet() {
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

		doPost(request, response);
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

		//设置请求域的编码格式
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		ManagerBiz biz = new ManagerBizImpl();
        ManagerDao dao = new ManagerDaoImpl();
		
		//获取标杆
		String flag = request.getParameter("flag");
		if(flag!=null){
			
			//登录操作判断
			if(flag.equals("loginmanager")){
				String managername = request.getParameter("email");
				String managerpwd = request.getParameter("password");
				//调用biz登录的方法
				Manager mg = biz.login(managername,managerpwd);

				if(mg==null){
					out.println("<script>alert('用户名或者密码有误,请重新输入');history.go(-1);</script>");
				}else{
					
					//将登陆的用户保存到session域中
					request.getSession().setAttribute("manager", mg);
					out.println("<script>alert('登录成功！');location.href='managerindex.jsp';</script>");
				}
				
			}
			
			
			
			//判断数据库是否有这个用户
			if(flag.equals("checkmanagername")){
				String managername = request.getParameter("managername");
				if(dao.checkname(managername)){
					out.print(1);//不存在该用户
				}else{
					out.print(2);//存在该用户
				}
			}
			
			//查询企业未审核的岗位
			if(flag.equals("querynocheckjob")){
				List<Job> list = new ArrayList<Job>();
				list = dao.queryNoCheckJob();
				if(list!=null){
					request.setAttribute("joblist", list);
					request.getRequestDispatcher("querynocheckjob.jsp").forward(request,response);
					//out.println("<script>location.href='querynocheckjob.jsp'</script>");
				}else{
					out.println("<script>alert('岗位审核完毕，无需审核');history.go(-1);</script>");
				}
				
			}
			
			//审核企业发布的岗位
			if(flag.equals("checkjob")){
				int id = Integer.valueOf(request.getParameter("jid"));
				if(dao.checkJob(id)){
					out.println("<script>alert('审核成功，允许发布');location.href='managerindex.jsp';</script>");
				}else{

				    out.println("<script>alert('审核失败，请重新提交');history.go(-1);</script>");
				}
			}
			
		    //审核的单个岗位

			if(flag.equals("queryonejob")){
				int id = Integer.valueOf(request.getParameter("jid"));
				Job job= dao.queryJob(id);
				request.setAttribute("job", job);
				if(job!=null){
				    //如果对象不为空的话
				    request.getRequestDispatcher("managercheckjob.jsp").forward(request,response);
				    
				}else{
				     //如果对象为空
				      out.print("<script>alert('查询失败！！');history.go(-1)</script>");
				}
			}

		}
	    out.flush();
		out.close();
		
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
