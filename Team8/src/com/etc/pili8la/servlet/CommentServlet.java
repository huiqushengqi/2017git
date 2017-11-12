package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.CommentBiz;
import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.bizimpl.CommentBizImpl;
import com.etc.pili8la.bizimpl.UserBizImpl;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.util.JDBCUtil;
import com.google.gson.Gson;



public class CommentServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public CommentServlet() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		JDBCUtil util=new JDBCUtil();
		String flag=request.getParameter("flag");
		if(flag!=null){
			if(flag.equals("music")){
				
				//获取musicid
				int id=Integer.valueOf(request.getParameter("musicid"));
				List<Comment> list=new ArrayList<Comment>();
				//根据music id查找评论
				ResultSet rs=util.query("select * from p_comment where comment_music=?", id);
				try {
					while(rs.next()){
						Comment comment=new Comment();
						comment.setComment_id(rs.getInt("comment_id"));
						comment.setComment_content(rs.getString("comment_content"));
						comment.setComment_date(rs.getString("comment_date"));
						comment.setComment_music(rs.getInt("comment_music"));
						list.add(comment);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					util.closeAll();
				}
				//存进请求域中
				request.setAttribute("type", "music");
				request.setAttribute("list", list);
				//转发到showcomment页面
				request.getRequestDispatcher("ShowComment.jsp").forward(request,response);	
			}
            if(flag.equals("video")){
				
				//获取video id
				int id=Integer.valueOf(request.getParameter("videoid"));
				List<Comment> list=new ArrayList<Comment>();
				//根据video id查找评论
				ResultSet rs=util.query("select * from p_comment where comment_video=?", id);
				try {
					while(rs.next()){
						Comment comment=new Comment();
						comment.setComment_id(rs.getInt("comment_id"));
						comment.setComment_content(rs.getString("comment_content"));
						comment.setComment_date(rs.getString("comment_date"));
						comment.setComment_video(rs.getInt("comment_video"));
						list.add(comment);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					util.closeAll();
				}
				//存入请求域
				request.setAttribute("type", "video");
				request.setAttribute("list", list);
				//转发到showcomment页面
				request.getRequestDispatcher("ShowComment.jsp").forward(request,response);	
			} 
            if(flag.equals("delete")){
            	//获取评论id，评论对象，评论对象id
            	int id=Integer.valueOf(request.getParameter("commentid"));
            	String type=request.getParameter("type");
            	int musicid=0;
            	int videoid=0;
            	if(type.equals("music")){	
            		musicid=Integer.valueOf(request.getParameter("musicid"));
            	}else{
            		
            		videoid=Integer.valueOf(request.getParameter("videoid"));
            	}
            	int i=util.update("delete from p_comment where comment_id=?",id);
            	if(i>0){
            		if(type.equals("music")){
            			
            			out.print("<script>alert('删除成功');location.href='CommentServlet?flag="+type+"&musicid="+musicid+"';</script>");
            		}else{
            			out.print("<script>alert('删除成功');location.href='CommentServlet?flag="+type+"&videoid="+videoid+"';</script>");	
            		}
            	}else{
            		out.print("<script>alert('删除失败');history.go(-1);</script>");
            	}
            }
            if (flag.equals("queryall")){
            	request.setCharacterEncoding("utf-8");
        		String uid=request.getParameter("id");
        		int id=Integer.valueOf(uid);
        		response.setContentType("text/html;charset=utf-8");
        		UserBiz ub=new UserBizImpl();
        		int count=ub.getCommentByidCount(id);
        		int currentPage=0;
            	int size=10;
            	int pageCount=(count%size==0?(count/size):(count/size+1));
            	String str=request.getParameter("page");
            	if(str==null){
            		currentPage=1;
            	}else{
            		currentPage=Integer.valueOf(str);
            	}
            	currentPage=(currentPage<=0?1:currentPage); 
            	currentPage=(currentPage>pageCount?pageCount:currentPage);
            	List<Comment> list=ub.queryCommentBypage(currentPage,size,id);
        		Gson gs=new Gson();
        		String jsonArray=gs.toJson(list);
        		out.print(jsonArray);
        		out.flush();
        		out.close();
            	
            }
		}
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
