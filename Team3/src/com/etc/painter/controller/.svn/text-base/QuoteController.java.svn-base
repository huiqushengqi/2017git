package com.etc.painter.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.etc.painter.biz.MTypeBiz;
import com.etc.painter.biz.QuoteBiz;
import com.etc.painter.entity.MType;
import com.etc.painter.entity.Material;

@Controller
public class QuoteController {

	@Resource
	private MTypeBiz biz;
	
	

	public MTypeBiz getBiz() {
		return biz;
	}



	public void setBiz(MTypeBiz biz) {
		this.biz = biz;
	}



	@RequestMapping(value="/myquote")
	public ModelAndView queryall(String typename,String name,int page){
		System.out.println("进入控制器");
		ModelAndView mav=new ModelAndView();
		int size=1;		
		MType mt=biz.queryByname(typename);	
		int countnum=mt.getList().size();
		int countpage=countnum/size>0?(countnum%size>0?countnum/size+1:countnum/size):1;
		mav.addObject("mt", mt);
		mav.addObject("countpage", countpage);
		mav.addObject("page", page);
		mav.addObject("size", size);
		mav.setViewName(name);
		return mav;
	}

}
