package com.oneMind.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.oneMind.biz.PostBiz;
import com.oneMind.biz.StudentBiz;
import com.oneMind.biz.StudentPostBiz;
import com.oneMind.dao.StudentPostDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

@Controller
@RequestMapping("/StudentCenter")
public class LxController {
	@Resource
	private StudentBiz studentBiz;
	
	@Resource
	private StudentPostBiz studentpostbiz;
	
	/**
	 * 学生后台登录验证
	 * @param student_name
	 * @param student_password
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "checkLogin")
	public void checkLogin(String student_name,String student_password, HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			Student student=studentBiz.checkLogin(student_name,student_password);
			if (student!=null) {
				HttpSession session=request.getSession();
				session.setAttribute("student", student);
				out.print("<script>location.href='index.jsp'</script>");
			} else {
				out.print("<script>alert('登陆失败');history.go(-1);</script>");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
	/**
	 * 显示分页数据
	 * @param student_id
	 * @param type_id
	 * @param page
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "getmypage")
	public void getPageContent(String student_id,String type_id,String page, HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		System.out.println("进入了方法getPageContent");
		System.out.println(page);
		PrintWriter out = null;
		try {
			out = response.getWriter();
			//每页显示五条评论
			int size=5;
			int student_id2=Integer.valueOf(student_id);
			int type_id2=Integer.valueOf(type_id);
			
			int count=studentpostbiz.countPostByTypeAndStudentId(student_id2, type_id2);
			//总页数
			int pagecount=(count%size==0?(count/size):(count/size+1));
			//当前页数
			int thispage=0;

			if(page==null){
				thispage=1;
			}else{
				thispage=Integer.valueOf(page);
			}
			//容错判断
			thispage=(thispage<=0?1:thispage);  //下限容错
			thispage=(thispage>pagecount?pagecount:thispage);//上限容错
			int lastpage=thispage-1;
			lastpage=lastpage<=0?1:lastpage;  //上一页容错
			int nextpage=thispage+1;
			nextpage=nextpage>pagecount?pagecount:nextpage; //下一页容错
			List<Post> list=studentpostbiz.queryPostByTypeAndStudentId(student_id2, type_id2, size*thispage,(thispage-1)*size);
			Gson gson=new Gson();
			String str=gson.toJson(list);
			System.out.println(str);
			System.out.println(list.get(0).getPost_type().getType_id());
			out.write(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
	/**
	 * 返回总页数
	 * @param student_id
	 * @param type_id
	 * @param page
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="sumpage")
	public void sumpage(String student_id,String type_id,HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		System.out.println("进入了方法sumpage");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			//每页显示五条评论
			int size=5;
			int student_id2=Integer.valueOf(student_id);
			int type_id2=Integer.valueOf(type_id);
			
			int count=studentpostbiz.countPostByTypeAndStudentId(student_id2, type_id2);
			//总页数
			int pagecount=(count%size==0?(count/size):(count/size+1));
			System.out.println(pagecount);
			out.print(pagecount);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 更新学生信息
	 * @param student
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping(value="updateStudent")
	public void updateStudent(Student student,@RequestParam("file") MultipartFile file,HttpSession session,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=null;
		Student stu=(Student)session.getAttribute("student");
		stu.setStudent_name(student.getStudent_name());
		stu.setStudent_birthday(student.getStudent_birthday());
		stu.setStudent_sex(student.getStudent_sex());
		stu.setStudent_head("headImg/"+file.getOriginalFilename());
		
		System.out.println("进入了更新方法");
		System.out.println(file.getOriginalFilename());
		System.out.println(student.getStudent_id()+"++"+student.getStudent_sex()+"++"+student.getStudent_birthday()+"++"+student.getStudent_name());
		
		if(studentBiz.updateStudent(stu)>0){
			session.setAttribute("student", stu);
			File file2=new File(session.getServletContext().getRealPath("headImg/")+file.getOriginalFilename());
			try {
				FileUtils.copyInputStreamToFile(file.getInputStream(), file2);
				out=response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print("<script>alert('更新成功');location.href='change.jsp';</script>");
		}else{
			try {
				out=response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print("<script>alert('更新失败');location.href='change.jsp';</script>");
		}
		out.flush();
		out.close();	
	}
	/**
	 * 删除该学生帖子
	 * @param post_id
	 * @param post_type
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="delpost")
	public void delpost(String post_id,String post_type,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		System.out.println("进入了方法delpost");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(studentpostbiz.delPostById(Integer.valueOf(post_id))>0){
			if(post_type.equals("1")){
				out.print("<script>alert('删除成功');location.href='second-hand.jsp';</script>");
			}else if(post_type.equals("2")){
				out.print("<script>alert('删除成功');location.href='lost.jsp';</script>");
			}else if(post_type.equals("3")){
				out.print("<script>alert('删除成功');location.href='express.jsp';</script>");
			}else if(post_type.equals("4")){
				out.print("<script>alert('删除成功');location.href='fresh.jsp';</script>");
			}
		}else{
			out.print("<script>alert('删除失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
	}
	/**
	 * 查询该帖子的评论
	 * @param post_id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="getComment")
	public String getComment(String post_id,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		System.out.println("进入了getComment");
		List<Comment> comments= studentpostbiz.queryCommentByPostId(Integer.valueOf(post_id));
		request.setAttribute("list", comments);
		for(Comment comm:comments){
			System.out.println(comm.getComment_content());
		}
		return "StudentCenter/showComment";	
	}
	/**
	 * 根据评论id删除评论
	 * @param comment_id
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="delCommentById")
	public void delCommentById(String comment_id,HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		System.out.println("进入了方法delCommentById");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(studentpostbiz.delCommentById(Integer.valueOf(comment_id))>0){
			out.print("<script>alert('删除成功');location.href='showComment.jsp';</script>");
		}else{
			out.print("<script>alert('删除失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
	}
}
