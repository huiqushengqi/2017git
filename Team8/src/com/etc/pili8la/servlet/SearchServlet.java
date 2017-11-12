package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.MusicBiz;
import com.etc.pili8la.biz.VideoBiz;
import com.etc.pili8la.bizimpl.MusicBizImpl;
import com.etc.pili8la.bizimpl.VideoBizImpl;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.Video;

public class SearchServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchServlet() {
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	 	request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String flag=request.getParameter("flag");
		if(flag!=null){
			if(flag.equals("SearchMusic")){
				String music_title=request.getParameter("music_title");
				MusicBiz musicbiz=new MusicBizImpl();
				//查询搜索集合
				List<Music> list=musicbiz.queryMusicByTitle(music_title);
				//获取输出对象
				String str="<ul>";
				for (int i = 0; i < list.size(); i++) {
					str=str+"<li><a href='MusicServlet?flag=enterMusic&music_id="+list.get(i).getMusic_id()+"'>"+list.get(i).getMusic_title()+"</a></li>";
				}
				str=str+"</ul>";
				
				out.print(str);
				out.flush();
				out.close();
			}if(flag.equals("SearchVideo")){
				String video_title=request.getParameter("video_title");
				VideoBiz videobiz=new VideoBizImpl();
				List<Video> list=videobiz.queryVideoByTitle(video_title);
				//获取输出对象
				String str="<ul>";
				for (int i = 0; i < list.size(); i++) {
					str=str+"<li><a href='VideoServlet?flag=enterVideo&video_id="+list.get(i).getVideo_id()+"'>"+list.get(i).getVideo_title()+"</a></li>";
				}
				str=str+"</ul>";
				
				out.print(str);
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
