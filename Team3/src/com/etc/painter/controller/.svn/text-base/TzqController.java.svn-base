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


import com.etc.painter.biz.ManagerBiz;

import com.etc.painter.entity.Designer;
import com.etc.painter.entity.Manager;

@Controller
public class TzqController {
	@Resource
	private ManagerBiz biz;
	
	public ManagerBiz getBiz() {
		return biz;
	}

	public void setBiz(ManagerBiz biz) {
		this.biz = biz;
	}


	@RequestMapping("/management")
	public String query(HttpServletRequest request){
		
		List<Manager> list=biz.query();
		request.setAttribute("list", list);		
		return "management";
		
	}
	@RequestMapping("/delete")
	public String delete(Integer mag_id, HttpServletRequest request,HttpServletResponse response){
		
        PrintWriter out=null;
		
		response.setContentType("text/html;charset=utf-8");
		      try {
				out=response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   int i=biz.delete(mag_id);
		   if(i>0){
			   List<Manager> list=biz.query();
			   for (Manager manager : list) {
				
			}
				request.setAttribute("list", list);
				
		   }else{  
			   out.print("<script>alert('删除失败')</script>");   
		   }
		return"manager";
	}
	@RequestMapping("/delete1")
	public String delete1(HttpServletRequest request){
		 try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String str1=request.getParameter("str1");
		    System.out.println(str1);
			int a;
			String[] magid=str1.split(",");
			     
			for (int i = 0; i < magid.length; i++) {
				System.out.println(magid[i]);
				Integer  mag_id=Integer.parseInt(magid[i]);
				int s=biz.delete(mag_id);
				
			}
			int page=1;
			int size=3;
			List<Manager>list=biz.querybypage(page,size);   
	     
		    request.setAttribute("list", list);	
		   
		return"manager";
	}
	@RequestMapping("/manager2")
	public ModelAndView queryByAll(int page){
		    ModelAndView mav=new ModelAndView();
		    int size=3;
			List<Manager>list=biz.querybypage(page,size);
			mav.addObject("list", list);
			mav.addObject("page3", page);
		    int num=biz.querycount();
		    num=num/size>0?(num%size>0?num/size+1:num/size):num/size+1;
		    mav.addObject("num3",num );//总页数
		    mav.addObject("size", list.size()%2>0?(list.size()/2+1):list.size()/2);
		    mav.setViewName("manager");
		    return mav;
	}
	@RequestMapping("/manager1")
	public ModelAndView querydesigner(int page){
		ModelAndView mav=new ModelAndView();
		if(page==0){
			page=1;
		}
		int size=3;
		int num=biz.querycount();
		num=num/size>0?(num%size>0?num/size+1:num/size):1;//总页数
		if(page>num){
			page=num;
		}
		List<Manager>list=biz.querybypage(page,size);
		mav.addObject("list", list);
		mav.addObject("page", page);
		mav.addObject("num", num);
		mav.setViewName("manager");
		return mav;
	}
	
	@RequestMapping("/manager")
	public String manager(HttpServletRequest request){
		List<Manager> list=biz.query();
		request.setAttribute("list", list);
		return "manager";
	}
	@RequestMapping("/editmanager")
	public String editmanager(Integer mag_id,HttpServletRequest request){
		
		Manager mag=biz.selectid(mag_id);
		request.setAttribute("mag", mag);
		return "editmanager";
	}
	@RequestMapping("/overmanager")
	public String overmanager(Integer mag_id,HttpServletRequest request){
		
		Manager mag=biz.selectid(mag_id);
		request.setAttribute("mag", mag);
		return "overmanager";
	}
	
	@RequestMapping(value="/addmangaer",method=RequestMethod.POST)
	public String fileup(String mag_name,String mag_job,String mag_about,@RequestParam("mag_img")MultipartFile file,HttpSession session,HttpServletRequest request ){
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
		Date date=new Date();
		DateFormat  df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=df.format(date);
		Manager mag=new Manager();
		mag.setMag_name(mag_name);
		mag.setMag_job(mag_job);
		mag.setMag_about(mag_about);
		mag.setMag_img("images/"+file.getOriginalFilename());
		mag.setMag_date(time);
		
		int i=biz.addMag(mag);
		if(i>0){
		System.out.println("添加成功");
		}else{
			System.out.println("添加失败");
		}
		int page=1;
		int size=3;
		List<Manager>list=biz.querybypage(page,size);   
     
	    request.setAttribute("list", list);	
	   
	    return"manager";
		
	}
	@RequestMapping(value="/updatemanager",method=RequestMethod.POST)
	
	public String updatmanager(Integer mag_id,String mag_img1, String mag_name,String mag_job,String mag_about,@RequestParam("mag_img")MultipartFile file,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		
			String path=session.getServletContext().getRealPath("/images");
			File file2=new File(path+"/"+file.getOriginalFilename());
			
			
			     try {
					FileUtils.copyInputStreamToFile(file.getInputStream(), file2);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		
		PrintWriter out=null;
		response.setContentType("text/html;charset=utf-8");
	      try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  	  Date date=new Date();
		  DateFormat  df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  String time=df.format(date);
		     Manager mag1=new Manager();
		     mag1.setMag_id(mag_id);
		     mag1.setMag_name(mag_name);
		     mag1.setMag_job(mag_job);
		     mag1.setMag_date(time);
		     mag1.setMag_about(mag_about);
		     if(file.getOriginalFilename()=="/null"||file.getOriginalFilename()==""){
		    	 mag1.setMag_img(mag_img1);
		     }else{
		    	mag1.setMag_img("images/"+file.getOriginalFilename());
		     }
		     
		     
		     int i=biz.update(mag1);

		    
		     if(i>0){
		    	     
		    	 out.print("<script>alert('修改成功');location.href='editmanager.action?mag_id="+mag_id+"'</script>");
		    	   
					
		     }else{
		    	 out.print("<script>alert('修改失败')</script>");
		     }
		     out.flush();
			 out.close();
		    
				return "editmanager";	
		   
	}
	
}
