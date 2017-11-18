package com.etc.painter.controller;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.etc.painter.biz.ExampleBiz;
import com.etc.painter.biz.MyTypeBiz;
import com.etc.painter.entity.Example;
import com.etc.painter.entity.MyType;


@Controller
public class ExampleController {
@Resource
private ExampleBiz biz;
@Resource
private MyTypeBiz biz1;

public MyTypeBiz getBiz1() {
	return biz1;
}

public void setBiz1(MyTypeBiz biz1) {
	this.biz1 = biz1;
}

public ExampleBiz getBiz() {
	return biz;
}

public void setBiz(ExampleBiz biz) {
	this.biz = biz;
}

	@RequestMapping(value="/myqueryAll")
	public ModelAndView queryall(String typename,String name,int page){
		
		ModelAndView mav=new ModelAndView();
		int size=8;//每页显示条数		
		List<Example> list=biz.queryit();
		int countnum=list.size();//总条数
		int countpage=countnum/size>0?(countnum%size>0? countnum/size+1:countnum/size):1;//总页数
		mav.addObject("size", size);
		mav.addObject("countpage", countpage);
		mav.addObject("page", page);
		
		mav.addObject("list", list);
		mav.setViewName(name);
		return mav;
	}

	/**
	 * 根据案例类型查询案例
	 * 
	 * 
	 */
	@RequestMapping(value="myquery")
	public ModelAndView querybytype(int typeid,int page){
		
		ModelAndView mav=new ModelAndView();
		int size=8;//每页显示条数		
		List<Example> list=biz.querybytype(typeid);
		int countnum=list.size();//总条数
		int countpage=countnum/size>0?(countnum%size>0? countnum/size+1:countnum/size):1;//总页数
		mav.addObject("size", size);
		mav.addObject("countpage", countpage);
		mav.addObject("page", page);
		
		mav.addObject("list", list);
		mav.setViewName("classic_case");
		return mav;
	}
	
	
	
	
}
