package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.ComicBiz;
import com.etc.pili8la.bizimpl.ComicBizImpl;
import com.etc.pili8la.entity.Comic;

public class ShowComicServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowComicServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//���嵱ǰƪ�ı��
		int thispiece=0;
		//�ӵ�ַ����ȡ��ǰƪ�ı��
		String mypiece=request.getParameter("piece");
		if(mypiece==null||mypiece.equals("")){
			thispiece=1;
			}else{
		    //˵���ǵ�һ�ν���ô���ҳ����ôĬ��ȡ���ϵĵ�һ������
			thispiece=Integer.valueOf(mypiece);
			}
		
		//����һ������
		ComicBiz biz = new ComicBizImpl();
		//����rownum��ѯ����
		Comic comic = biz.queryComicByid(thispiece);
		//��ѯ��������
		List<Comic> list1=biz.queryAllComic();
		 //������ƪ��������list1�ĳ���
		int piececount=list1.size();
		//request.setAttribute("mycomic", comic);
		//System.out.println(comic.getComic_link());
		//�ָ��ַ���
		String [] comiclink = comic.getComic_link().split("/");
		//int number = comiclink.length-1;
		//System.out.println(number);
		//request.setAttribute("mynumber", number);
//		for(int n= 0;n<comiclink.length;n++){
//			System.out.println(comiclink[n]);
//		}
		//���ָ���ͼƬ������list
		List<String> list = new ArrayList<String>();
		for(int n= 1;n<comiclink.length;n++){
			//System.out.println(comiclink[n]);
			list.add(comiclink[n]);
		}
		//System.out.println(list);
		   
        //����ƪ�������޺�����
		thispiece=thispiece<=0?1:thispiece;
		thispiece=thispiece>piececount?piececount:thispiece;
        //��һƪ�ݴ�
		int lastpiece=thispiece-1;
		lastpiece=lastpiece<=0?1:lastpiece;
		//��һƪ�ݴ�
		int nextpiece=thispiece+1;
		nextpiece=nextpiece>piececount?piececount:nextpiece;
					
		if(list!=null){
			//������ͼƬ���ļ��Ϸ�����������
			//request.setAttribute("list", list);
			request.setAttribute("comiclink",list);
			//��ƪ��������������
			request.setAttribute("currentpiece", thispiece);
			request.setAttribute("lastpiece", lastpiece);
			request.setAttribute("nextpiece", nextpiece);
			//ת��������չʾ����
			request.getRequestDispatcher("ShowComic.jsp").forward(request, response);
		}	
		
		out.flush();
		out.close();
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
