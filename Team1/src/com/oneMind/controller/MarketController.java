package com.oneMind.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.oneMind.biz.MarketBiz;
import com.oneMind.dao.MarketDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;
import com.oneMind.entity.Type;




@Controller
public class MarketController {
	@Resource
	private MarketBiz dao;
	public MarketBiz getDao() {
		return dao;
	}
	public void setDao(MarketBiz dao) {
		this.dao = dao;
	}
	@ResponseBody
	@RequestMapping (value = "queryconfession", produces = "application/json; charset=utf-8")
	public String queryPost (String page) {
		int size=20;
		int thispage=Integer.parseInt(page);
		List<Post> list=dao.queryPostByPage(thispage, size);
		Gson g = new Gson();
		String str=g.toJson(list);
		return str;
	}
	@RequestMapping (value = "market" )
	public ModelAndView twoMar(int thispage){
		ModelAndView mvc = new ModelAndView();
		List<Integer> list1=new ArrayList<Integer>();
		int size=1;
		int i=dao.queryPostNum();
		int pagecount=i/size;
		pagecount=pagecount<1?1:pagecount;
		int page1=thispage;
		//下限容错
		page1=page1<1?1:page1;
		//上限容错
        page1=page1>pagecount?pagecount:page1;
		int page2=page1+1;
		int page3=page1+2;
		List<Post> list=dao.queryPostByPage(page1, size);
		for (int z=1;z<pagecount+1;z++) {
			list1.add(z);			
		}
		mvc.addObject("postnum", i);
		mvc.addObject("list", list);
		mvc.addObject("list1",list1);
	    mvc.addObject("page1", page1);
	    mvc.addObject("page2", page2<2?2:page2);
	    mvc.addObject("page3", page3<3?3:page3);
		mvc.setViewName("Market1");
		return mvc;
	}
	@RequestMapping("test")
	public String test1(){
		int i=dao.queryPostNum();
		System.out.println(i);
		
		return "test";
	}
	@RequestMapping (value = "post1" )
	public ModelAndView mar(int postid,int thispage){
		ModelAndView mvc = new ModelAndView();
		List<Integer> list1=new ArrayList<Integer>();
		int i=dao.queryComNum(postid);
		int size=1;
		int pagecount=i/size;
		pagecount=pagecount<1?1:pagecount;
		for (int z=1;z<pagecount+1;z++) {
			list1.add(z);			
		}
	    Post post=dao.queryPostById(postid);
		List<Comment> list=dao.queryComByPage(postid, thispage, size);
		mvc.addObject("list1",list1);
		mvc.addObject("page1", thispage);
		mvc.addObject("postnum", i);
		mvc.addObject("list", list);
	    mvc.addObject("post", post);
		mvc.setViewName("market");
		return mvc;
	}
	
	@RequestMapping (value="postnum")
	public void mar1(String postid,String content,String studentid,HttpServletResponse re){
		PrintWriter out=null;
		try {
			out = re.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Comment com=new Comment();
		int id1=Integer.parseInt(postid);
		int id2=Integer.parseInt(studentid);
		Student stu=dao.queryStudentById(id2);
		Post post=dao.queryPostById(id1);
		com.setComment_content(content);
		com.setComment_post(post);
		com.setComment_student(stu);
		Date data =new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		String date1=df.format(data);
		com.setComment_date(date1);
		
	
		if(dao.addComByPosts(com)){
	    out.print("<script>location.href='post1.action?postid="+id1+"&thispage=1'</script>");
		}
	   
	}
	@RequestMapping(value="marketpost",method=RequestMethod.POST)
	public void addLost(String post_title,String post_depict,@RequestParam("post_file") MultipartFile[] files,HttpSession session,HttpServletResponse response){
		
    	 String path=session.getServletContext().getRealPath("/Lost");
		 String filepath="";
    	 
		for (int i = 0; i < files.length; i++) {
			if(files[i].isEmpty()){
				continue;
			}
			else{
			
			MultipartFile file=files[i];
			filepath=filepath+file.getOriginalFilename()+"/";
			
			File file2=new File(path+"/"+file.getOriginalFilename());
			try {
				
				FileUtils.copyInputStreamToFile(file.getInputStream(), file2);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		}
		
		Student stu=new Student();
		stu.setStudent_id(1);
		
		Type type=new Type();
		type.setType_id(1);
		Date date=new Date();
		DateFormat date1=new SimpleDateFormat("yyyy-MM-dd");
		String post_date=date1.format(date);
		
		Post post=new Post();
		post.setPost_title(post_title);
		post.setPost_depict(post_depict);
	    post.setPost_type(type);
	    post.setPost_student(stu);
		post.setPost_date(post_date);
		post.setPost_state(1);
		post.setPost_hot(0);
		post.setPost_picture(filepath);
		
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(dao.addpost1(post)){
			 out.print("<script>location.href='market.action?thispage=1'</script>");
		}else{
			out.print("<script>history.go(-1)</script>");
		}
			
			
	}
}

	
	

