package com.etc.painter.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.etc.painter.biz.ExampleBiz;
import com.etc.painter.biz.ManagerBiz;

import com.etc.painter.entity.Designer;
import com.etc.painter.entity.Example;
import com.etc.painter.entity.Manager;

@Controller
public class ExpController {
	@Resource
	private ExampleBiz biz;

	public ExampleBiz getBiz() {
		return biz;
	}
	public void setBiz(ExampleBiz biz) {
		this.biz = biz;
	}
	@RequestMapping("/exp")
	public String query(HttpServletRequest request){
		
		List<Example> list=biz.query();
		
		
		request.setAttribute("list", list);		
		return "exp";
		
	}
	@RequestMapping("/overexp")
	public String queryname(String exp_name, HttpServletRequest request){
		
		List<Example> list=biz.queryname(exp_name);
		request.setAttribute("list", list);		
		return "overexp";
		
	}
	
	
			
	@RequestMapping("/delete_exp")
	public String delete(Integer exp_id, HttpServletRequest request){

		        int i=biz.delete(exp_id);
		  
			   List<Example> list=biz.query();
				request.setAttribute("list", list);
				
		   
		        return"exp";
	}
	@RequestMapping("/editexp")
	public String editmanager(Integer exp_id,HttpServletRequest request){
		
		Example exp=biz.selectid(exp_id);
		request.setAttribute("exp", exp);
		return "editexp";
	}
	@RequestMapping(value="/updateexp",method=RequestMethod.POST)
	public String fileup(Integer exp_id,String exp_name,String exp_content,@RequestParam("exp_img")MultipartFile file,HttpSession session,HttpServletRequest request ){
		//获取要上传的文件夹的绝对路径,当前项目在服务器中的绝对路径
		String path=session.getServletContext().getRealPath("/images");
		//获取到保存指定位置的文件对象
		File file2=new File(path+"/"+file.getOriginalFilename());
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(),file2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Example exp=new Example();
		exp.setExp_id(exp_id);
		exp.setExp_name(exp_name);
		exp.setExp_content(exp_content);
		exp.setExp_img("images/"+file.getOriginalFilename());
		
		
		int i=biz.update(exp);
		if(i>0){
		System.out.println("修改成功");
		}else{
			System.out.println("修改失败");
		}
		int page=1;
		int size=3;
		List<Example>list=biz.query();   
     
	    request.setAttribute("list", list);	
	   
	    return"exp";
		
	}

	
}
