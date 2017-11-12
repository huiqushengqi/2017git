package com.etc.coder.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	String str="";
	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(str);
	    response.setContentType("text/html;charset="+str);
	    chain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		str=filterConfig.getInitParameter("encoding");
	}

}
