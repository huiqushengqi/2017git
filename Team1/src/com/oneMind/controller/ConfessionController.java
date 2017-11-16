package com.oneMind.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oneMind.biz.ConfessionPostBiz;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;
import com.oneMind.entity.Type;

@Controller
public class ConfessionController {
     @Resource
	private ConfessionPostBiz biz;

	public ConfessionPostBiz getBiz() {
		return biz;
	}

	public void setBiz(ConfessionPostBiz biz) {
		this.biz = biz;
	}
	

	@RequestMapping(value="/Confessionpost",method=RequestMethod.POST)
	public void addLost(String post_title,String post_depict,@RequestParam("post_file") MultipartFile[] files,HttpSession session,HttpServletResponse response){
		//��ȡ�ϴ��ļ��ľ���·��
    	 String path=session.getServletContext().getRealPath("/Lost");
		 String filepath="";
    	 //�����ϴ��ļ���
		for (int i = 0; i < files.length; i++) {
			if(files[i].isEmpty()){
				continue;
			}
			else{
			//��ȡ�ļ����ļ�
			MultipartFile file=files[i];
			filepath=filepath+file.getOriginalFilename()+"/";
			//��ȡ���浽�ļ��е��ļ�����
			File file2=new File(path+"/"+file.getOriginalFilename());
			try {
				//�ļ�����ָ���ļ���
				FileUtils.copyInputStreamToFile(file.getInputStream(), file2);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		}
		
		//����ѧ������
		Student stu=new Student();
		stu.setStudent_id(1);
		//��������
		Type type=new Type();
		type.setType_id(3);
		Date date=new Date();
		DateFormat date1=new SimpleDateFormat("yyyy-MM-dd");
		String post_date=date1.format(date);
		//��ֵ����post����
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
		
		
		if(biz.addConfession(post)){
			out.print("<script>location.href='Cpage.action'</script>");
		}else{
			out.print("<script>history.go(-1)</script>");
		}
			
			
	}
	
	@RequestMapping(value="Cpage")
	public String queryLostByPage(String page,HttpServletRequest request,HttpServletResponse response){
		//����ÿҳ����
		int size=10;
		//��ȡ������
		int count=biz.getcount();
		//��ȡҳ��
		int pagecount=(count%size==0?(count/size):(count/size+1));
		int thispage=0;
		if(page==null){
			thispage=1;
		}else{
			thispage=Integer.valueOf(page);
		}
		//�ݴ��ж�
		thispage=(thispage<=0?1:thispage);  //�����ݴ�
		thispage=(thispage>pagecount?pagecount:thispage);//�����ݴ�
		int lastpage=thispage-1;
		lastpage=lastpage<=0?1:lastpage;  //��һҳ�ݴ�
		int nextpage=thispage+1;
		nextpage=nextpage>pagecount?pagecount:nextpage; //��һҳ�ݴ�
		//���ݵ�ǰҳ����ÿҳ������ѯ����
		List<Post> list=biz.queryConfessionByPage(thispage, size);
		request.setAttribute("list", list);
		request.setAttribute("thispage", thispage);
		request.setAttribute("pagecount", count);
	
		return "Confession";
	}
	@RequestMapping(value="market2")
	public String queryLostById(String id,HttpServletRequest request){
		int myid=Integer.valueOf(id);
		Post mypost=biz.queryConfessionById(myid);
		String[] img=mypost.getPost_picture().split("/");
		List<Comment> list=biz.queryComByPost(myid);
		request.setAttribute("img", img[0]);
		request.setAttribute("post", mypost);
		request.setAttribute("list", list);
		return "Conmarket";
	}
	
	@RequestMapping (value="CCom")
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
		Post post=new Post();
		post.setPost_id(id1);
		Student stu=new Student();
		stu.setStudent_id(id2);
		com.setComment_content(content);
		com.setComment_post(post);
		com.setComment_student(stu);
		Date data =new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		String date1=df.format(data);
		com.setComment_date(date1);
		
	
		if(biz.addComment(com)){
	    out.print("<script>location.href='market2.action?id="+id1+"&thispage=1'</script>");
		}
	   
	}
	
	
}
