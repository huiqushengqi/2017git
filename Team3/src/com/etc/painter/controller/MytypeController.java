package com.etc.painter.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.etc.painter.biz.ExampleBiz;
import com.etc.painter.biz.MyTypeBiz;
import com.etc.painter.entity.Example;
import com.etc.painter.entity.MyType;
import com.sun.net.httpserver.HttpContext;


@Controller
public class MytypeController {
@Resource
private ExampleBiz biz1;

public ExampleBiz getBiz1() {
	return biz1;
}

public void setBiz1(ExampleBiz biz1) {
	this.biz1 = biz1;
}


@Resource
private MyTypeBiz biz;

	public MyTypeBiz getBiz() {
	return biz;
}

public void setBiz(MyTypeBiz biz) {
	this.biz = biz;
}

	@RequestMapping("/queryHomeType")
	
	public ModelAndView queryHomeType(HttpServletResponse response){
		
		ModelAndView mav=new ModelAndView();
//		List<MyType> list=biz.queryAllType();
//		if(list!=null){
//			mav.addObject("list", list);
//			mav.getModel().put("list", "hhh");
//			mav.setViewName("classic_case");
//			out.print("<script>location.href='classic_case.jsp';</script>");
//		}
//		out.flush();
//		out.close();
//		mav.addObject("list", list);
		mav.setViewName("classic_case");
		return mav;
	}
	
	
/**
 * 	
 * 根据类型名查询类型
 * 
 */
 @RequestMapping("/querybytypename")
	public String querybyid(HttpServletResponse response,HttpSession session,HttpServletRequest request){
	 PrintWriter out=null;
	 try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		String name=request.getParameter("typename");
		MyType mytype=biz.queryall(name);
		String getpage=request.getParameter("page");
		int page=Integer.valueOf(getpage);
		if(mytype!=null){
			int typeid=mytype.getEtype_id();
			//out.print("<script>location.href='myquery.action?page="+page+"&typeid='"+typeid+";</script>");
			return "redirect:/myquery.action?page="+page+"&typeid="+typeid;
			//new ModelAndView("myquery.action?page="+page+"&typeid='"+typeid);
			
		}
		out.flush();
		out.close();
     return "myquery";
	}
}
