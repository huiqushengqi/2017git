package com.etc.pili8la.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.etc.pili8la.entity.User;

public class CommentFilter implements Filter {

	List<String> list=new ArrayList<String>();
	
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		String str=(String)request.getParameter("comment_content");
		String flag=(String)request.getParameter("flag");
		if(str==null&&flag.equals("sendComment")){
			//设置编码格式
			response.setContentType("text/html;charset=utf-8");
			
		}else if(flag.equals("sendComment")){
			//设置编码格式
			response.setContentType("text/html;charset=utf-8");
			if(list.contains(str)){
				//提示敏感词
				PrintWriter out=response.getWriter();
				
				out.print("<script>alert('爱国 富强 明主 友善');</script>");
				out.flush();
				out.close();
				
			}
		}else{
			chain.doFilter(request, response);
		}

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		list.add("尼玛");
		list.add("fuck");
		list.add("坑货");
		list.add("傻逼");
		list.add("TMD");
		
	}

}
