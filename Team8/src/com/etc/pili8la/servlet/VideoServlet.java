package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.CommentBiz;
import com.etc.pili8la.biz.DanmuBiz;
import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.biz.VideoBiz;
import com.etc.pili8la.bizimpl.CommentBizImpl;
import com.etc.pili8la.bizimpl.DanmuBizImpl;
import com.etc.pili8la.bizimpl.UserBizImpl;
import com.etc.pili8la.bizimpl.VideoBizImpl;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.User;
import com.etc.pili8la.entity.Vdanmu;
import com.etc.pili8la.entity.Video;
import com.etc.pili8la.util.FileUp;
import com.etc.pili8la.util.RenamePolicyCos;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

public class VideoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public VideoServlet() {
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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String flag=request.getParameter("flag");
		
		if(flag!=null){
			//判断是否为进入播放
			if(flag.equals("enterVideo")){
				//获取页面传来的id
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				//查询当前视频信息
				VideoBiz videobiz=new VideoBizImpl();
				Video video=videobiz.queryVideo(video_id);
				//更新点击次数
				video.setVideo_click(video.getVideo_click()+1);
				videobiz.addVideoClick(video.getVideo_click(),video.getVideo_id());
				//将查询对象设置到请求域中
				request.setAttribute("video", video);
				//转发到video-demo.jsp
				request.getRequestDispatcher("video-demo.jsp").forward(request, response);
				
				
			}else if(flag.equals("queryCommentPage")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的视频id
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				//获取评论条数
				CommentBiz commentbiz=new CommentBizImpl();
				int count=commentbiz.getVideoCommentCountById(video_id);
				//总页数
				int pagecount=(count%size==0?(count/size):(count/size+1));
				//当前页数
				int thispage=0;
				String mypage=request.getParameter("page");
				if(mypage==null){
					thispage=1;
				}else{
					thispage=Integer.valueOf(mypage);
				}
				//容错判断
				thispage=(thispage<=0?1:thispage);  //下限容错
				thispage=(thispage>pagecount?pagecount:thispage);//上限容错
				int lastpage=thispage-1;
				lastpage=lastpage<=0?1:lastpage;  //上一页容错
				int nextpage=thispage+1;
				nextpage=nextpage>pagecount?pagecount:nextpage; //下一页容错
				List[] list=new List[2];
				//根据当前页数和每页显示条数，查询出对应的数据
				list[0]=commentbiz.queryVideoByPage(video_id, thispage, size);
				//从数据中获取评论用户，查出对应用户
				list[1]=commentbiz.queryVideoUserByPage(video_id, thispage, size);
				
				//将集合打包给前端
				Gson gson=new Gson();
				String str=gson.toJson(list);
				System.out.println(str);
				out.print(str);
				out.flush();
				out.close();
				
			}else if(flag.equals("sendComment")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的评论信息
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				int comment_userid=Integer.valueOf(request.getParameter("comment_userid"));
				
				
				String comment_content=request.getParameter("comment_content");
				//设置评论时间
				Date date=new Date();
				DateFormat df=new SimpleDateFormat("yyyy年M月d日");
				String comment_date=df.format(date);
				//封装评论
				Comment comment=new Comment();
				comment.setComment_user(comment_userid);
				comment.setComment_video(video_id);
				comment.setComment_content(comment_content);
				comment.setComment_date(comment_date);
				//将评论放入数据库
				CommentBiz commentbiz=new CommentBizImpl();
				commentbiz.addComment(comment);
				
				//获取评论条数
				int count=commentbiz.getVideoCommentCountById(video_id);
				//总页数
				int pagecount=(count%size==0?(count/size):(count/size+1));
				//当前页数
				int thispage=0;
				String mypage=request.getParameter("page");
				if(mypage==null){
					thispage=1;
				}else{
					thispage=Integer.valueOf(mypage);
				}
				//容错判断
				thispage=(thispage<=0?1:thispage);  //下限容错
				thispage=(thispage>pagecount?pagecount:thispage);//上限容错
				int lastpage=thispage-1;
				lastpage=lastpage<=0?1:lastpage;  //上一页容错
				int nextpage=thispage+1;
				nextpage=nextpage>pagecount?pagecount:nextpage; //下一页容错
				List[] list=new List[2];
				//根据当前页数和每页显示条数，查询出对应的数据
				list[0]=commentbiz.queryVideoByPage(video_id, thispage, size);
				//从数据中获取评论用户，查出对应用户
				list[1]=commentbiz.queryVideoUserByPage(video_id, thispage, size);
				
				//将集合打包给前端
				Gson gson=new Gson();
				String str=gson.toJson(list);
				
				out.print(str);
				out.flush();
				out.close();
				//得到评论页数
			}else if(flag.equals("getPage")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的视频id
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				//获取评论条数
				CommentBiz commentbiz=new CommentBizImpl();
				int count=commentbiz.getVideoCommentCountById(video_id);
				//总页数
				Integer pagecount=(count%size==0?(count/size):(count/size+1));
				//当前页数
				Integer thispage=0;
				String mypage=request.getParameter("page");
				if(mypage==null){
					thispage=1;
				}else{
					thispage=Integer.valueOf(mypage);
				}
				//容错判断
				thispage=(thispage<=0?1:thispage);  //下限容错
				thispage=(thispage>pagecount?pagecount:thispage);//上限容错
				int lastpage=thispage-1;
				lastpage=lastpage<=0?1:lastpage;  //上一页容错
				int nextpage=thispage+1;
				nextpage=nextpage>pagecount?pagecount:nextpage; //下一页容错
				
				List<Integer> list=new ArrayList<Integer>();
				list.add(thispage);
				list.add(pagecount);
				
				//将集合打包给前端
				Gson gson=new Gson();
				
				String str=gson.toJson(list);
				out.print(str);
				out.flush();
				out.close();
				//得到弹幕对象
			}else if(flag.equals("getVdanmu")){
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				DanmuBiz danmubiz=new DanmuBizImpl();
				List<Vdanmu> list = danmubiz.queryVdanmu(video_id);
				Vdanmu[] vdanmu=new Vdanmu[list.size()];
				for (int i = 0; i < vdanmu.length; i++) {
					vdanmu[i] = list.get(i);
				}
				
				//将集合打包给前端
				Gson gson=new Gson();
				
				String str=gson.toJson(vdanmu);
				out.print(str);
				out.flush();
				out.close();
			}else if(flag.equals("setVdanmu")){
				int video_id=Integer.valueOf(request.getParameter("video_id"));
				String str=request.getParameter("danmu");
				Gson gson=new Gson();
				Vdanmu vdanmu=gson.fromJson(str, Vdanmu.class);
				
				DanmuBiz danmubiz=new DanmuBizImpl();
				danmubiz.addVdanmu(vdanmu, video_id);
				
			}

			//上传视频
			if(flag.equals("uploadvideo")){
				//上传视频
				//文件上传
				String savePath = request.getRealPath("/video"); //获取文件的真实路径
				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;
				
				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());

				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
				try {
					String filename = FileUp.uploadfiles(mulrequest);
					String[] str = filename.split("/");
//					for(int i =0;i<str.length;i++){
//						System.out.println(str[i]);
//					}
					String cover ="";
					String videolink = "";
					//第二个文件信息为封面
					cover = "/" +str[1];
					
					//第一个文件信息为歌曲
					videolink = "/"+str[2];
					
					//将表单提交的信息封装成music对象
					Video video = new Video();
					String title = mulrequest.getParameter("title");
					String author = mulrequest.getParameter("author");
					String type = mulrequest.getParameter("type");
					String myabstract=mulrequest.getParameter("abstract");
					video.setVideo_cover(cover);
					video.setVideo_title(title);
					video.setVideo_author(author);
					video.setVideo_type(type);
					video.setVideo_link(videolink);
					video.setVideo_abstract(myabstract);
					
					//调用biz（dao）层的方法上传至数据库
					VideoBiz biz = new VideoBizImpl();
					
			
					if(biz.addVideo(video)){
						//成功返回true提示上传成功
						out.print("<script>alert('上传成功');location.href='upload.jsp';</script>");
					}else{
						//失败返回该页面
						out.print("<script>alert('上传失败');history.go(-1);</script>");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			//显示所有的视频
			if(flag.equals("queryAllVideo")){
				
				VideoBiz biz = new VideoBizImpl();
				
				List<Video> list = biz.queryAllVideo();
				request.setAttribute("videolist",list);
				request.getRequestDispatcher("video.jsp").forward(request, response);
			}
			//删除视频的方法(根据传入的id)
			if(flag.equals("deletevideo")){
				//取到请求域中的视频id
				int videoid = Integer.valueOf(request.getParameter("videoid"));
				//调用videobiz 方法删除视频
				VideoBiz biz = new VideoBizImpl();
				
				if(biz.deleteVideo(videoid)){
					out.print("<script>alert('删除成功~');location.href='VideoServlet?flag=queryAllVideo';</script>");
				}else{
					out.print("<script>alert('删除失败!');history.go(-1);</script>");
				}
				
			}

			//修改视频信息的方法
			if(flag.equals("updatevideo")){
				//根据表单提交的信息，封装成对象
				int videoid = Integer.valueOf(request.getParameter("videoid"));
				String title = request.getParameter("title");
				String type = request.getParameter("type");
				String author = request.getParameter("author");
				String myabstract=request.getParameter("abstract");
				Video video = new Video();
				video.setVideo_id(videoid);
				video.setVideo_type(type);
				video.setVideo_author(author);
				video.setVideo_title(title);
				video.setVideo_abstract(myabstract);
				//调用videodao的更新方法
				VideoBiz biz = new VideoBizImpl();
				//VideoDao dao = new VideoDaoImpl();
				if(biz.updateVideo(video)){
					//成功提示成功跳转到显示全部的视频页面
					out.print("<script>alert('修改成功~');location.href='VideoServlet?flag=queryAllVideo';</script>");
				}else{
					//失败提示失败，返回编辑页面
					out.print("<script>alert('修改失败!');history.go(-1);</script>");
				}	
			}
			
			//编辑视频的方法
			if(flag.equals("editvideo")){
				//VideoDao dao_video = new VideoDaoImpl();
				//TypeDao dao_type = new TypeDaoImpl();
				VideoBiz biz_video = new VideoBizImpl();
				
				//根据请求域中的id查询到该条视频的所有信息
				int videoid = Integer.valueOf(request.getParameter("videoid"));
				
				Video video = new Video();
				video = biz_video.queryVideo(videoid);
				//设置到请求域中
				request.setAttribute("myvideo", video);
				//转发到编辑视频的页面
				request.getRequestDispatcher("editvideo.jsp").forward(request, response);
				
			}
		}

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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
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
