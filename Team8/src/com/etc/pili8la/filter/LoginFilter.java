package com.etc.pili8la.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.etc.pili8la.entity.Admin;
import com.etc.pili8la.entity.User;


public class LoginFilter implements Filter {

	public void destroy() {
		

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//获取serlvet中request对象
	    HttpServletRequest hrequest=(HttpServletRequest) request;	
		//获取session
		HttpSession session=hrequest.getSession();
		//取出session存放登陆用户的对象
		User user=(User) session.getAttribute("user");
		if(user==null){
			//取出session存放登陆管理员的对象
			Admin admin=(Admin) session.getAttribute("admin");
			if(admin!=null){
				//有登陆,允许继续访问
				chain.doFilter(request, response);
			}
			//没有登陆，弹出对话框，然后跳转到登陆界面
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			out.print("<script>alert('您尚未登陆，请先登陆！！'); location.href='login.jsp';</script>");
			out.flush();
			out.close();
		}else{
			//有登陆,允许继续访问
			chain.doFilter(request, response);
		}

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		

	}

}
