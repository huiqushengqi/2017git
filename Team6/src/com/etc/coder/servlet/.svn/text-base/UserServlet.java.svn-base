package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.coder.biz.UserBiz;
import com.etc.coder.biz.impl.UserBizImpl;
import com.etc.coder.entity.User;
import com.etc.coder.util.FileUp;
import com.etc.coder.util.RenamePolicyCos;
import com.oreilly.servlet.MultipartRequest;

public class UserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserServlet() {
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

		PrintWriter out = response.getWriter();
		UserBiz ub=new UserBizImpl();
		String flag=request.getParameter("flag");
		if(flag.equals("docheckusername")){
			String username=request.getParameter("username");
			//根据姓名查询username是否存在
			if(!username.equals("请输入用户名")&&username!=null&&!username.equals("")){
				if(ub.selectUserByname(username)==null){
					out.print(1);//不存在该用户
				}else{
					out.print(2);//存在该用户
				}
			}else{
				out.print(0);//用户为null或""
			}
			out.flush();
			out.close();		
		}
		if(flag.equals("dochecklogin")){
			String username=request.getParameter("email");
			String password=request.getParameter("password");
			User user=ub.selectUserByname(username);
			HttpSession session=request.getSession();
			if(user!=null){
				if(user.getUser_password().equals(password)){
					session.setAttribute("user", user);

					//request.getRequestDispatcher("index.jsp").forward(request, response);

					out.print("<script>location.href='index.jsp';</script>");
					//request.getRequestDispatcher("index.jsp").forward(request, response);

				}else{
					out.print("<script>alert('输入的密码错误！！！');location.href='login.jsp';</script>");
				}
			}else{
				out.print("<script>location.href='index.jsp';</script>");
			}
			
			out.flush();
			out.close();
		}
		if(flag.equals("docheckuser")){
			String username=request.getParameter("username");
			//根据姓名查询username是否存在
			if(!username.equals("请输入用户名")&&username!=null&&!username.equals("")){
				if(ub.selectUserByname(username)==null){
					out.print(1);//不存在该用户
				}else{
					out.print(2);//存在该用户
				}
			}else{
				out.print(0);//用户为null或""
			}
			out.flush();
			out.close();
		}
		if(flag.equals("doregister")){
			String username=request.getParameter("email");
			String password=request.getParameter("password");
			User user=new User();
			user.setUser_name(username);
			user.setUser_password(password);
			if(ub.addUser(user)){
				out.print("<script>location.href='login.jsp';</script>");
			}else{
				out.print("<script>alert('添加失败！！！');</script>");
			}
			out.flush();
			out.close();
		}
		if(flag.equals("completeuserInfo")){
			String savepath=request.getRealPath("/Upload");
			int maxsize=1024*1024*1024;
			MultipartRequest mr=new MultipartRequest(request,savepath,maxsize,"utf-8",new RenamePolicyCos());
			try {
				String filename=FileUp.uploadfiles(mr);
				int id=Integer.parseInt(mr.getParameter("myname"));
				String name=mr.getParameter("myname1");
				String password=mr.getParameter("myname2");
				String sex=mr.getParameter("sex");
				String year=mr.getParameter("myyear");
				String month=mr.getParameter("mymonth");
				String day=mr.getParameter("myday");
				String birthday=year+"/"+month+"/"+day;
				String address=mr.getParameter("myname3");
				String email=mr.getParameter("myname4");
				String phone=mr.getParameter("myname5");
				String company=mr.getParameter("temptation");
				User user=new User(id, name, password, sex, birthday, address, email, phone, filename, company);
				if(ub.updateUser(user)){
					if(user.getUser_img().equals("/null")){
						user.setUser_img(ub.selectUserByname(name).getUser_img());
					}
				    HttpSession session=(HttpSession)request.getSession();
					session.setAttribute("user", user);
				//request.getRequestDispatcher("index.jsp").forward(request, response);

					session.setAttribute("year", year);
					session.setAttribute("month", month);
					session.setAttribute("day", day);
					out.print("<script> location.href='index.jsp';</script>");

				}else{
					out.print("<script> alert('添加失败！！！！');location.href='completeuserInfo.jsp';</script>");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.flush();
			out.close();
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
