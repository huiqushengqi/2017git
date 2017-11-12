package com.etc.pili8la.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.pili8la.biz.ComicBiz;
import com.etc.pili8la.biz.TypeBiz;
import com.etc.pili8la.bizimpl.ComicBizImpl;
import com.etc.pili8la.bizimpl.TypeBizImpl;
import com.etc.pili8la.entity.Comic;
import com.etc.pili8la.entity.MyType;
import com.etc.pili8la.util.FileUp;
import com.etc.pili8la.util.RenamePolicyCos;
import com.oreilly.servlet.MultipartRequest;

public class ComicServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public ComicServlet() {
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
			//
			//往刚创建的漫画里面上传漫画
			if(flag.equals("insertcomic")){
				
				String savePath = request.getRealPath("/comic"); //获取文件的真实路径
				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;
				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());
				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
					try {
						String filename = FileUp.uploadfiles(mulrequest);
						String comiclink = filename;
						//取到漫画的标题
						String title = mulrequest.getParameter("title");
						System.out.println("标题是"+title);
						System.out.println(filename);
						ComicBiz biz = new ComicBizImpl();
						if(biz.insertComicByTitle(comiclink, title)){
							out.print("<script>alert('插入成功~');location.href='ComicServlet?flag=queryAllComic';</script>");
						}else{
							out.print("<script>alert('添加失败');history.go(-1);</script>");
						}
						
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			//创建漫画
			if(flag.equals("createcomic")){
				String savePath = request.getRealPath("/comic"); //获取文件的真实路径
				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;

				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());

				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
				try {
					String filename = FileUp.uploadfiles(mulrequest);
					//从表单中提交的信息，封装成一个对象
					// 信息:
					Comic comic = new Comic();
					String title = mulrequest.getParameter("title");
					String author = mulrequest.getParameter("author");
					System.out.println("author");
					int type = Integer.valueOf(mulrequest.getParameter("type"));
					comic.setComic_cover(filename);
					comic.setComic_title(title);
					comic.setComic_author(author);
					comic.setComic_type(type);	
					ComicBiz biz = new ComicBizImpl();
					request.setAttribute("mytitle",title);
					
					if(biz.createComic(comic)){
						
						request.getRequestDispatcher("insertcomic.jsp").forward(request, response);
						
					}else{
						out.print("<script>alert('创建失败!');history.go(-1);</script>");
					}
						
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			//上传漫画
			if(flag.equals("comic")){
				//文件上传
				String savePath = request.getRealPath("/comic"); //获取文件的真实路径
				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;

				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());

				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
				
				try {
					String filename = FileUp.uploadfiles(mulrequest);
					String[] str = filename.split("/");
					String str_cover="";
					String str_comic="";
					//第二个信息为封面
					str_cover = "/"+str[2];
					//第一个信息为漫画
					str_comic = "/"+str[1];
					
					//从表单中提交的信息，封装成一个对象
					// 信息:
					Comic comic = new Comic();
					String title = mulrequest.getParameter("title");
					String author = mulrequest.getParameter("author");
					int type = Integer.valueOf(mulrequest.getParameter("type"));
					comic.setComic_cover(str_cover);
					comic.setComic_title(title);
					comic.setComic_author(author);
					comic.setComic_type(type);
					comic.setComic_link(str_comic);
					//调用dao的方法，使用存储过程
					ComicBiz biz = new ComicBizImpl();
					//成功提示上传成功
					//失败提示上传失败
					boolean isgo = biz.uploadcomic(comic);
					
					if(isgo){
						out.print("<script> alert('上传成功~');location.href = 'upload.jsp';</script>");
					}else{
						out.print("<script> alert('上传失败!');history.go(-1);</script>");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			//显示漫画(查询漫画转发到comic.jsp)
			if(flag.equals("queryAllComic")){
				ComicBiz biz = new ComicBizImpl();
				List<Comic> list  = biz.queryAllComic();
				request.setAttribute("comiclist",list);
				//从数据库取到所有的漫画信息，转发到页面
				request.getRequestDispatcher("comic.jsp").forward(request, response);
			}
			//删除漫画
			if(flag.equals("deletecomicbyid")){
				int mycomicid = Integer.valueOf(request.getParameter("comicid"));
				System.out.println(mycomicid);
				ComicBiz biz = new ComicBizImpl();
				if(biz.deleteComicById(mycomicid)){
					out.print("<script>alert('删除成功~');location.href='ComicServlet?flag=queryAllComic';</script>");
				}else{
					out.print("<script>alert('删除失败!');history.go(-1);</script>");
				}
				
			}

			//更新漫画
			if(flag.equals("updatecomic")){

				String savePath = request.getRealPath("comic"); //获取文件的真实路径

				//2设置文件上传的最大大小
				int fileMaxSize = 5*1024*1024*1024;

				//创建multipartrequest对象，要传入五个参数  :request对象、上传路径、文件大小限制、编码格式、重命名策略(方式)
				MultipartRequest mulrequest = new MultipartRequest(request,savePath,fileMaxSize,"UTF-8",new RenamePolicyCos());

				//接下来的步骤和上传文字的一样
				//调用文件上传方法，返回上传后文件名
				try {
					String filename = FileUp.uploadfiles(mulrequest);
					//取到从表单中获得的信息，拼接地址名后放入dao中更新
					//id
					int comicid = Integer.valueOf(mulrequest.getParameter("comicid"));
					String oldfilename = mulrequest.getParameter("oldfilename");
					//新地址
					String newlink =oldfilename+filename;
					//新标题
					String comictitle = mulrequest.getParameter("title");
					//新类型
					int comictype = Integer.valueOf(mulrequest.getParameter("type"));
					//新作者
					String author = mulrequest.getParameter("author");
					
					Comic comic = new Comic();
					comic.setComic_id(comicid);
					comic.setComic_title(comictitle);
					comic.setComic_type(comictype);
					comic.setComic_author(author);
					comic.setComic_link(newlink);
					ComicBiz biz = new ComicBizImpl();
					//ComicDao dao = new ComicDaoImpl();
					if(biz.updateComic(comic)){
						out.print("<script>alert('修改成功~');location.href='ComicServlet?flag=queryAllComic';</script>");
					}else{
						out.print("<script>alert('修改失败!');history.go(-1);</script>");
					}
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			//编辑漫画
			if(flag.equals("editcomicbyid")){
				ComicBiz biz = new ComicBizImpl();
				//ComicDao dao = new ComicDaoImpl();
				//取到要编辑的id
				int mycomicid = Integer.valueOf(request.getParameter("comicid"));
				//根据id查询到该条漫画的所有信息，并设置到请求域中
				Comic comic = new Comic();
				comic =biz.queryComicByid(mycomicid);
				//把漫画的地址剥离出来，用sqlt分离，存成string数组，存入请求域中
				String comiclink = comic.getComic_link();
				System.out.println(comiclink);
				//分割出来成数组，存入请求域总
				String [] mylink = comiclink.split("/");
				for(int i = 0;i<mylink.length;i++){
					System.out.println(mylink[i]);
				}
				request.setAttribute("myAllLink", mylink);
				request.setAttribute("mycomic",comic);
				//查询到漫画所有类型，也设置到请求域中
				TypeBiz biz1= new TypeBizImpl();
				//TypeDao dao_type = new TypeDaoImpl();
				
				 List<MyType> list= biz1.queryAllType();
				request.setAttribute("mytypelist",list);
				//转发到编辑漫画的页面
				request.getRequestDispatcher("editcomic.jsp").forward(request, response);
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
