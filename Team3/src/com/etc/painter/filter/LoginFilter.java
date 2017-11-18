package com.etc.painter.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.etc.painter.entity.User;


public class LoginFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
		
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
			//没有登陆，弹出对话框，然后跳转到登陆界面
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			out.print("<script>alert('您尚未登陆，请先登陆再来哦！！');location.href='index.jsp';</script>");
			out.flush();
			out.close();
		}else{
			//有登陆,允许继续访问
			chain.doFilter(request, response);
		}
		
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
