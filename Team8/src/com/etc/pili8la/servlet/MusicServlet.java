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
import com.etc.pili8la.biz.MusicBiz;
import com.etc.pili8la.bizimpl.CommentBizImpl;
import com.etc.pili8la.bizimpl.DanmuBizImpl;
import com.etc.pili8la.bizimpl.MusicBizImpl;
import com.etc.pili8la.dao.MusicDao;
import com.etc.pili8la.daoimpl.MusicDaoimpl;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.Mdanmu;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.Vdanmu;
import com.etc.pili8la.util.FileUp;
import com.etc.pili8la.util.RenamePolicyCos;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

public class MusicServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public MusicServlet() {
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
		String flag=request.getParameter("flag");
		if(flag!=null){
			//上传音乐
			if(flag.equals("uploadmusic")){
				//上传音乐
				//文件上传
				String savePath = request.getRealPath("/music"); //获取文件的真实路径
				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;

				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());

				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
				try {
					String filename = FileUp.uploadfiles(mulrequest);
					String[] str = filename.split("/");
					String cover ="";
					String songlink = "";
					//第二个文件信息为封面
					cover = "/" +str[2];
					//第一个文件信息为歌曲
					songlink = "/"+str[1];
					//将表单提交的信息封装成music对象
					Music music = new Music();
					String title = mulrequest.getParameter("title");
					String singer = mulrequest.getParameter("singer");
					String type = mulrequest.getParameter("type");
					String abstractt=mulrequest.getParameter("abstract");
					music.setMusic_title(title);
					music.setMusic_cover(cover);
					music.setMusic_singer(singer);
					music.setMusic_type(type);
					music.setMusic_link(songlink);
					music.setMusic_abstract(abstractt);
					
					//调用biz（dao）层的方法上传至数据库
					MusicBiz biz = new MusicBizImpl();
					if(biz.uploadmusic(music)){
						//成功返回true提示上传成功
						out.print("<script>alert('上传成功~');location.href='upload.jsp';</script>");
					}else{
						//失败返回该页面
						out.print("<script>alert('上传失败！');history.go(-1);</script>");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//显示所有音乐
			else if(flag.equals("queryAllMusic")){
				
				MusicBiz biz = new MusicBizImpl();
				List<Music>list  = biz.queryAllMuisc();
				
				//将得到的音乐的集合存到request域中，再转发到页面上
				request.setAttribute("musiclist", list);
				request.getRequestDispatcher("music.jsp").forward(request, response);
				
			}
			//删除音乐的方法(根据传入的id)
			else if(flag.equals("deleteMusicById")){
				//取到所传入的音乐的id
				
				int id = Integer.valueOf(request.getParameter("mid"));
				//调用musicdao 删除音乐
				MusicBiz biz = new MusicBizImpl();
				if(biz.dleteMusicByid(id)){
					//成功提示成功，再跳转servlet查询音乐显示所有的音乐
					out.print("<script>alert('删除成功~');location.href='MusicServlet?flag=queryAllMusic';</script>");
				}else{
					//失败history 返回
					out.print("<script>alert('删除失败!');history.go(-1);</script>");
				}
			//进入音乐播放主界面的处理
			}else if(flag.equals("enterMusic")){
				//取出传入音乐id
				int id=Integer.valueOf(request.getParameter("music_id"));
				MusicBiz biz=new MusicBizImpl();
				Music music=biz.queryMusicById(id);
				//更新点击次数
				music.setMusic_click(music.getMusic_click()+1);
				biz.addMusicClick(music.getMusic_click(),music.getMusic_id());
				//将对象设置到请求域中
				request.setAttribute("music", music);
				//将对象转发到指定的页面
				request.getRequestDispatcher("music-demo.jsp").forward(request, response);
			//查询评论页数
			}else if(flag.equals("queryCommentPage")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的视频id
				int id=Integer.valueOf(request.getParameter("music_id"));
				//获取评论条数
				CommentBiz commentbiz=new CommentBizImpl();
				int count=commentbiz.getMusicCommentCountById(id);
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
				list[0]=commentbiz.queryMusicByPage(id, thispage, size);
				//从数据中获取评论用户，查出对应用户
				list[1]=commentbiz.queryMusicUserByPage(id, thispage, size);
				
				//将集合打包给前端
				Gson gson=new Gson();
				String str=gson.toJson(list);
				
				out.print(str);
				out.flush();
				out.close();
			//发送评论的处理
			}else if(flag.equals("sendComment")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的评论信息
				int id=Integer.valueOf(request.getParameter("music_id"));
			    int comment_userid=Integer.valueOf(request.getParameter("comment_userid"));

				String comment_content=request.getParameter("comment_content");
				//设置评论时间
				Date date=new Date();
				DateFormat df=new SimpleDateFormat("yyyy年M月d日");
				String comment_date=df.format(date);
				//封装评论
				Comment comment=new Comment();
				comment.setComment_user(comment_userid);
				comment.setComment_music(id);
				comment.setComment_content(comment_content);
				comment.setComment_date(comment_date);
				//将评论放入数据库
				CommentBiz commentbiz=new CommentBizImpl();
				commentbiz.addComment(comment);
				
				//获取评论条数
				int count=commentbiz.getMusicCommentCountById(id);
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
				list[0]=commentbiz.queryMusicByPage(id, thispage, size);
				//从数据中获取评论用户，查出对应用户
				list[1]=commentbiz.queryMusicUserByPage(id, thispage, size);
				
				//将集合打包给前端
				Gson gson=new Gson();
				String str=gson.toJson(list);
				
				out.print(str);
				out.flush();
				out.close();
			//得到页数的处理
			}else if(flag.equals("getPage")){
				//每页显示五条评论
				int size=5;
				//获取页面传来的视频id
				int id=Integer.valueOf(request.getParameter("music_id"));
				//获取评论条数
				CommentBiz commentbiz=new CommentBizImpl();
				int count=commentbiz.getMusicCommentCountById(id);
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
			}else if(flag.equals("getMdanmu")){
				int music_id=Integer.valueOf(request.getParameter("music_id"));
				DanmuBiz danmubiz=new DanmuBizImpl();
				List<Mdanmu> list = danmubiz.queryMdanmu(music_id);
				Mdanmu[] mdanmu=new Mdanmu[list.size()];
				for (int i = 0; i < mdanmu.length; i++) {
					mdanmu[i]=list.get(i);
				}
				//将集合打包给前端
				Gson gson=new Gson();
				
				String str=gson.toJson(mdanmu);
				out.print(str);
				out.flush();
				out.close();
			}else if(flag.equals("setMdanmu")){
				int music_id=Integer.valueOf(request.getParameter("music_id"));
				String danmu_text=request.getParameter("comment_text");
				String danmu_img=request.getParameter("danmu_img");
				
				Mdanmu mdanmu=new Mdanmu();
				mdanmu.setImg(danmu_img);
				mdanmu.setInfo(danmu_text);
				
				DanmuBiz danmubiz=new DanmuBizImpl();
				danmubiz.addMdanmu(mdanmu,music_id);
				
			}

			//修改更新音乐的方法
			if(flag.equals("updatemusic")){
				//取到从表单传来的数据，
				int musicid = Integer.valueOf(request.getParameter("musicid"));
				String title = request.getParameter("title");
				String type = request.getParameter("type");
				String singer = request.getParameter("singer");
				//封装成对象，
				Music music = new Music();
				music.setMusic_id(musicid);
				music.setMusic_title(title);
				music.setMusic_singer(singer);
				music.setMusic_type(type);
				//调用dao方法，更新音乐表
				MusicBiz biz = new MusicBizImpl();
				if(biz.updateMusicById(music)){
					out.print("<script>alert('修改成功~');location.href='MusicServlet?flag=queryAllMusic';</script>");
				}
				//成功提示更新成功，调到音乐显示页面
				//失败提示失败，返回页面
				
			}
			
			//编辑音乐的方法
			if(flag.equals("editMusic")){
				//得到传入的id
				int id = Integer.valueOf(request.getParameter("musicid"));
				//根据id查到该条音乐的所有信息封装成对象，设置到请求域中
				MusicBiz biz = new MusicBizImpl();
				Music music = new Music();
				music = biz.queryMusicById(id);
				request.setAttribute("mymusic", music);
				//转发到编辑音乐的页面
				request.getRequestDispatcher("editmusic.jsp").forward(request, response);
				
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
