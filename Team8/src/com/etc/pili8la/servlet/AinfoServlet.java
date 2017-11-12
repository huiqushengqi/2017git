package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.ComicBiz;
import com.etc.pili8la.biz.MusicBiz;
import com.etc.pili8la.biz.VideoBiz;
import com.etc.pili8la.bizimpl.ComicBizImpl;
import com.etc.pili8la.bizimpl.MusicBizImpl;
import com.etc.pili8la.bizimpl.VideoBizImpl;
import com.etc.pili8la.entity.Comic;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.Video;

public class AinfoServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public AinfoServlet() {
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
		 ComicBiz cbiz=new ComicBizImpl();
		 MusicBiz mbiz=new MusicBizImpl();
		 VideoBiz vbiz=new VideoBizImpl();
		 List<Comic> clist=cbiz.queryAllComic();
		 List<Music> mlist=mbiz.queryAllMuisc();
		 List<Video> vlist=vbiz.queryAllVideo();
		 request.setAttribute("musiclist",mlist);
		 request.setAttribute("videolist",vlist);
		 request.setAttribute("comiclist",clist);
		 request.getRequestDispatcher("homepage.jsp").forward(request,response);
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
