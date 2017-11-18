package com.etc.painter.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.etc.painter.biz.EssayBiz;
import com.etc.painter.biz.ReviewBiz;
import com.etc.painter.biz.UserBiz;

import com.etc.painter.entity.Essay;
import com.etc.painter.entity.Review;
import com.etc.painter.entity.User;
import com.google.gson.Gson;

@Controller
public class LF_Controller {
    @Resource
	private UserBiz biz;
    @Resource
    private EssayBiz biz2;
    @Resource
    private ReviewBiz biz3;

    public UserBiz getBiz() {
		return biz;
	}
	public void setBiz(UserBiz biz) {
		this.biz = biz;
	}
	/**
	 * 验证登录
	 * @param user_name
	 * @param user_pwd
	 * @param request
	 * @param response
	 * @param session
	 */
	@RequestMapping(value="/lf_login")
    public void checklogin(String user_name,String user_pwd,HttpServletRequest request,HttpServletResponse response,HttpSession session){
    	PrintWriter out=null;
    	response.setContentType("text/html;charset=utf-8");
    	try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	User user=biz.checkLogin2(user_name, user_pwd);
    	
    	if(user!=null){
    		session.setAttribute("user", user);
    		out.print("<script>alert('登录成功');location.href='index.jsp';</script>");
    		
    	}else{
    		out.print("<script>alert('用户名或密码错误');history.go(-1);</script>");
    	} 	
    	out.flush();
    	out.close();   	
    }
	/**
	 * 查询所有文章
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/allEssay")
	public String queryAllEssay(HttpServletRequest request){
		//分页查询
		int size=8;  //每页显示5条数据
		int count=biz2.essayNums();     //总条数
		int pageCount=count%size==0?count/size:count/size+1;     //总页数	
		String str=request.getParameter("page");
		
		int currentPage=1;   //当前页数
		if(str==null){
			currentPage=1;
		}else{
			try {
				currentPage=Integer.valueOf(str);
			} catch (Exception e) {
				currentPage=1;
			}
			
		}			
		List<Essay> list=biz2.queryEssayByPage(currentPage, size);
		//将当前页数总页数，对应的集合存入到会话域中
		
		HttpSession session=request.getSession();
		session.setAttribute("count", count);
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("pageCount", pageCount);
		session.setAttribute("list", list);
		
//		//跳转到分页显示数据的地方 帖子

		return "essayAll";
		}
	
	/**
	 * 根据id获取文章信息
	 * @param essay_id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/detailEssay")
	public String detailEssay(int essay_id,HttpServletRequest request){
		//根据id查询文章
		Essay essay=biz2.queryEssayById(essay_id);
		//分页查询
		int size2=6;  //每页显示6条数据
		int count2=biz3.ReviewNum(essay_id);    //总条数
		int pageCount2=count2%size2==0?count2/size2:count2/size2+1;     //总页数	
		String str=request.getParameter("page");
		
		int currentPage2=1;   //当前页数
		if(str==null){
			currentPage2=1;
		}else{
			try {
				currentPage2=Integer.valueOf(str);
			} catch (Exception e) {
				currentPage2=1;
			}
			
		}			
		List<Review> list=biz3.queryReviewByPage(currentPage2, size2, essay_id);
		//将当前页数总页数，对应的集合存入到会话域中
		
		HttpSession session=request.getSession();
		session.setAttribute("count2", count2);
		session.setAttribute("currentPage2", currentPage2);
		session.setAttribute("pageCount2", pageCount2);
		session.setAttribute("list", list);
		
		
		
		session.setAttribute("essay", essay);
		

		
		
		return "essayDetail";
	}
	/**
	 * 发布帖子
	 * @param essay_title
	 * @param essay_content
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/lf_public")
	public void essayPublic(String essay_title,String essay_content,HttpSession session,HttpServletResponse response){
		PrintWriter out=null;
		
		response.setContentType("text/html;charset=utf-8");
	
		User user=(User)session.getAttribute("user");
		Date date=new Date();
		DateFormat  df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String essay_time=df.format(date);
		Essay essay=new Essay();
		essay.setEssay_title(essay_title);
		essay.setEssay_content(essay_content);
		essay.setEssay_user(user);
		essay.setEssay_time(essay_time);
		essay.setEssay_check(0);
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(biz2.insertEssay(essay)){
			
			out.print("<script>alert('发布成功，请等待管理员审核');history.go(-1)</script>");
		}else{
			out.print("<script>alert('发布失败');history.go(-1)</script>");		
		}
		
	}
	/**
	 * 查询我的帖子
	 * @param session
	 * @param request
	 * @return 
	 */
	@ResponseBody
	@RequestMapping(value="/myEssay",produces="application/json;charset=utf-8")
	public String myEssay(HttpSession session){
		User user=(User)session.getAttribute("user");
		List<Essay> list=biz2.queryEssayByUserId(user.getUser_id());
		Gson gson=new Gson();
		String myessay=gson.toJson(list);
		
		return myessay;
	}
	/**
	 * 查询我的帖子2
	 * @param session
	 * @param request
	 * @return
	 * @author lxy 
	 */
	@RequestMapping(value="/mypost")
	public void mypost(HttpSession session,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");	
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		User user=(User)session.getAttribute("user");
		List<Essay> list=biz2.queryEssayByUserId(user.getUser_id());
		
		if(list!=null){
			session.setAttribute("mypost", list);
			out.print("<script>location.href='usercenter.jsp';</script>");		
		}
		out.flush();
		out.close();
	}
	/**
	 * 用户评论
	 * @param review_content 评论内容
	 * @param essay_id 文章id
	 * @param session
	 * @param response
	 */
	@ResponseBody
	@RequestMapping(value="/lf_addReview",produces="application/json;charset=utf-8")
	public String addReview(String review_content,String review_essay,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		
//		try {
//			review_content=new String(review_content.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	
		//获取session对象
		System.out.println(review_content);
		User user=(User)session.getAttribute("user");
		//根据id查询文章
		int essayid=Integer.parseInt(review_essay);
		Essay essay=biz2.queryEssayById(essayid);
		
		Date date=new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String review_time=df.format(date);
		
		Review review=new Review();
		review.setReview_time(review_time);
		review.setReview_user(user);
		review.setReview_essay(essay);
		review.setReview_content(review_content);
		
		
		
//		request.setAttribute("essay", essay);
//		request.setAttribute("list", list);
		
		
		//插入评论
		if(biz3.addReview(review)>0){
			
		}	
		//根据id查询文章的所有评论
		List<Review> list=biz3.queryReviewByEssayid(essayid);
		
		Gson gson=new Gson();
		String str=gson.toJson(list);
		return str;
	}
	/**
	 * 根据关键字查询文章
	 * @param key
	 * @return
	 */
	@ResponseBody                               
	@RequestMapping(value="/earchEssay",produces="application/json;charset=utf-8")
	public String searchEssay(String key){
//		try {
//			key=new String(key.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//	
		
		

		List<Essay> list=biz2.queryEssayByKey(key);
		Gson gson=new Gson();
		String str=gson.toJson(list);
		return str;
	}
	@ResponseBody
	@RequestMapping(value="/lf_collection",produces="application/json;charset=utf-8")
	public String mycollection(HttpSession session){
		User user=(User)session .getAttribute("user");
		user=biz.checkLogin2(user.getUser_name(), user.getUser_pwd());
		String user_collect=user.getUser_collect();
		
		String collect[]=user_collect.split("_");
		List<Essay> list=new ArrayList<Essay>();
		for(int i=0;i<collect.length;i++){
			Essay essay=new Essay();
			essay=biz2.queryEssayById(Integer.valueOf(collect[i]));
			list.add(essay);
		}
		Gson gson=new Gson();
		String str=gson.toJson(list);
		return str;
	}
	@ResponseBody
	@RequestMapping(value="/lf_myconnection",produces="text/html;charset=utf-8")
	public String addCollection(String essay_id,HttpSession session,HttpServletRequest request){
		System.out.println(essay_id);
		User user=(User)session .getAttribute("user");
		String str="";
		int essayid=Integer.valueOf(essay_id);
		//获取用户收藏字段
		String user_collect=user.getUser_collect();
		String[] usercollect=user_collect.split("_");
		//查看是否已被收藏过
		for(int i=0;i<usercollect.length;i++){
			
			if(essay_id.equals(usercollect[i])){
				str="您已收藏过该篇文章不需再次收藏";
				return str;
			}
		}		
		//将收藏字段拼接
		String new_collection=user_collect+"_"+essay_id;
		//将文章id插入到作者收藏中
		if(biz.updateUserCollect(new_collection,user.getUser_id())){
			str="收藏成功";			
		}else{
			str="收藏失败";
		}
		return str;		
	}
	/**
	 * 查询未审核的帖子
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/essay_nocheck")
	public String admin_essay(HttpSession session){
		
		List<Essay> list=biz2.queryEssayNoCheck();
		
		session.setAttribute("list", list);
		return "redirect:/Admin_essay.jsp";
	}
	/**
	 * 管理员通过帖子
	 * @param essay_id
	 * @return
	 */
	@RequestMapping(value="/lf_adminpass")
	public String admin_pass(int essay_id,HttpSession session){
		
		biz2.EssayPass(essay_id);	
	
		return admin_essay(session);		
	}
	/**
	 * 管理员不通过帖子
	 * @param essay_id
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/lf_adminnopass")
	public String admin_nopass(int essay_id,HttpSession session){
		
		biz2.EssayNoPass(essay_id);
		return admin_essay(session);	
	}
	
	@ResponseBody
	@RequestMapping(value="/lf_orderByTime",produces="application/json;charset=utf-8")
	public String orderByTime(){
		
		List<Essay> list=biz2.queryEssayByTime();
		Gson gson=new Gson();
		String str=gson.toJson(list);
		return str;
		
	}
}
