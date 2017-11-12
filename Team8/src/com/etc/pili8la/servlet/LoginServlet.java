package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.pili8la.biz.AdminBiz;
import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.bizimpl.AdminBizImpl;
import com.etc.pili8la.bizimpl.UserBizImpl;
import com.etc.pili8la.entity.Admin;
import com.etc.pili8la.entity.User;

public class LoginServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public LoginServlet() {
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
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
        String flag=request.getParameter("flag");
        if(flag!=null){
        	if(flag.equals("login")){
        		
        		UserBiz ub=new UserBizImpl();
                String name=request.getParameter("username");
                String pwd=request.getParameter("userpwd");
                User user=ub.checkLogin(name, pwd);
                HttpSession session=request.getSession();
                

        		session.setAttribute("user",user);
        	   if (user!=null) {
        		  // out.print("<script>alert('登录成功'); location.href='loading.jsp';</script>");
        		   request.getRequestDispatcher("AinfoServlet").forward(request,response);
        	   }
        	   else{
        		   out.print("<script>alert('登录失败');history.go(-1);</script>");
        	   }
        	   out.flush();
        	   out.close();
        	}
        	if(flag.equals("adminlogin")){
        		AdminBiz biz=new AdminBizImpl();
        		String name=request.getParameter("adminname");
        		String pwd=request.getParameter("adminpwd");
        		Admin admin=biz.checkAdmin(name, pwd);
        		HttpSession session=request.getSession();
        		session.setAttribute("admin",admin);
        		 if (admin!=null) {
           		  
           		   request.getRequestDispatcher("admin.jsp").forward(request,response);
           	   }
           	   else{
           		   out.print("<script>alert('登录失败');history.go(-1);</script>");
           	   }
           	   out.flush();
           	   out.close();
        	}
        }
		
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
