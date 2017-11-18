package com.etc.painter.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.etc.painter.biz.ManagerBiz;
import com.etc.painter.bizimpl.DesignerBizImpl;
import com.etc.painter.entity.Designer;
import com.etc.painter.entity.Manager;
import com.google.gson.Gson;

@Controller

public class DesignerController {
	@Resource(name="designerBizImpl")
	private DesignerBizImpl biz;
	@Resource(name="managerBizimpl")
	private ManagerBiz biz1;
	
	public ManagerBiz getBiz1() {
		return biz1;
	}

	public void setBiz1(ManagerBiz biz1) {
		this.biz1 = biz1;
	}

	public DesignerBizImpl getBiz() {
		return biz;
	}

	public void setBiz(DesignerBizImpl biz) {
		this.biz = biz;
	}
	@RequestMapping("/queryByAll")
	public ModelAndView queryByAll(String title1,String title2,int page){
		    ModelAndView mav=new ModelAndView();
		    int size=3;
		    List<Designer> list=biz.queryBytitle(title1);
		    mav.addObject("list", list);
			List<Designer>list1=biz.queryBytitle(title2);
			mav.addObject("list1", list1);
			List<Manager>list2=biz1.querybypage(page,size);
			mav.addObject("list2", list2);
			mav.addObject("page3", page);
		    int num=biz1.querycount();
		    num=num/size>0?(num%size>0?num/size+1:num/size):num/size+1;
		    mav.addObject("num3",num );//总页数
		    mav.addObject("size", list2.size()%2>0?(list2.size()/2+1):list2.size()/2);
		    mav.setViewName("team");
		    return mav;
	}
	@RequestMapping("/querydesigner")
	public ModelAndView querydesigner(int page){
		ModelAndView mav=new ModelAndView();
		if(page==0){
			page=1;
		}
		int size=5;
		int num=biz.queryCount1();
		num=num/size>0?(num%size>0?num/size+1:num/size):1;//总页数
		if(page>num){
			page=num;
		}
		List<Designer>list=biz.queryAll(page, size);
		mav.addObject("list", list);
		mav.addObject("page", page);
		mav.addObject("num", num);
		mav.setViewName("designer");
		return mav;
	}
	@RequestMapping("/deletebyid")
	public String deletebyid(int id,int page1){
		if(biz.deletebyid(id)){
			return "redirect:/querydesigner.action?page="+page1+"";
		}
		return null;
	}
	@RequestMapping(value="/adddesigner",method=RequestMethod.POST)
	public String adddesigner( Designer designer,@RequestParam("file")MultipartFile file,HttpSession session){
		String path=session.getServletContext().getRealPath("/Upload");
		String filename=file.getOriginalFilename();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		filename=df.format(new Date())+filename;
		File file1=new File(path+"/"+filename);
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), file1);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		designer.setDer_img("/"+filename);
		designer.setDer_date(df.format(new Date()));
		if(biz.adddesigner(designer)){
			return "redirect:/querydesigner.action?page=1";
		}else{
			System.out.println("添加失败");
			return "adddesigner";
		}
	}
	@RequestMapping("/selectdesigner")
	public ModelAndView selectdesigner(int id){
		ModelAndView mav=new ModelAndView();
		Designer d=biz.querybyid(id);
		mav.addObject("designer", d);
		mav.setViewName("editdesigner");
		return mav;
	}
	@RequestMapping(value="/updatedesigner",method=RequestMethod.POST)
	public String  updatedesigner(Designer designer,@RequestParam("file")MultipartFile file,HttpSession session){
		String path=session.getServletContext().getRealPath("/Upload");
		String filename=file.getOriginalFilename();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		filename=df.format(new Date())+filename;
		File file1=new File(path+"/"+filename);
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), file1);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		designer.setDer_img("/"+filename);
		designer.setDer_date(df.format(new Date()));
		if(biz.updatebyid(designer)){
			return "redirect:/querydesigner.action?page=1";
		}else{
			System.out.println("修改失败");
			return "editdesigner";
		}
	}
	
}
