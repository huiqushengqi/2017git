package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.bizimpl.UserBizImpl;
import com.etc.pili8la.entity.User;
import com.etc.pili8la.util.FileUp;
import com.etc.pili8la.util.RenamePolicyCos;
import com.oreilly.servlet.MultipartRequest;

public class RegisterServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public RegisterServlet() {
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
		UserBiz ub=new UserBizImpl();
		request.setCharacterEncoding("utf-8");
		String path=request.getRealPath("/headimg");
		int maxsize=1024*1024*1024;   //1m
        MultipartRequest mrequest=new MultipartRequest(request, path, maxsize, "utf-8", new RenamePolicyCos());
        String renameFilename="headimg";
        try {
        	renameFilename=renameFilename+FileUp.uploadfiles(mrequest);
        } catch (Exception e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
		String name=mrequest.getParameter("username");
		String pwd=mrequest.getParameter("userpwd");
	
		
        User user=new User();
        user.setUser_name(name);
        user.setUser_pwd(pwd);
        user.setUser_head(renameFilename);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
        if (ub.addUser(user)) {
      	   out.print("<script>alert('注册成功'); location.href='login.jsp';</script>");
 		   
 	   }
 	   else{
 		   out.print("<script>alert('注册失败');history.go(-1);</script>");
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
