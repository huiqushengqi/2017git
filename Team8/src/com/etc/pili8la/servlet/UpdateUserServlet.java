package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.biz.VideoBiz;
import com.etc.pili8la.bizimpl.UserBizImpl;
import com.etc.pili8la.bizimpl.VideoBizImpl;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.User;
import com.etc.pili8la.entity.Video;
import com.etc.pili8la.util.FileUp;
import com.etc.pili8la.util.RenamePolicyCos;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

public class UpdateUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateUserServlet() {
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
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String userid=request.getParameter("user_id");
        int uid=Integer.valueOf(userid);
        UserBiz ub=new UserBizImpl();
        User user=ub.queryUserById(uid);
        String head=user.getUser_head();
        PrintWriter out=response.getWriter();
        String path=request.getRealPath("/headimg");
		int maxsize=1024*1024*1024;   //1m
        MultipartRequest mrequest=new MultipartRequest(request, path, maxsize, "utf-8", new RenamePolicyCos());
        String renameFilename="";
        try {
        	renameFilename=FileUp.uploadfiles(mrequest);
        } catch (Exception e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
        String username=mrequest.getParameter("name");
        String userpwd=mrequest.getParameter("password");
        	user.setUser_name(username);
        	user.setUser_pwd(userpwd);
        	if (renameFilename.equals("/null") || renameFilename == "") {
    			user.setUser_head(head);
    		}else{
    			user.setUser_head(renameFilename);
    		}
		if (ub.updateUser(user)){
		    HttpSession session=request.getSession();
		    session.setAttribute("user",user);
		    out.print("<script>alert('修改成功');location.href='UserServlet?flag=queryAll';</script>");
		    }else{
		    out.print("<script>alert('修改失败');location.href='updateuser.jsp';</script>");
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
