package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.biz.CompanyResumeBiz;
import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.impl.CompanyBizImpl;
import com.etc.coder.biz.impl.CompanyResumeBizImpl;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.CompanyResume;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Job;
import com.etc.coder.util.FileUp;
import com.etc.coder.util.RenamePolicyCos;
import com.oreilly.servlet.MultipartRequest;

public class CompanyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CompanyServlet() {
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
		PrintWriter out = response.getWriter();
		CompanyBiz biz=new CompanyBizImpl();
		JobBiz jbiz=new JobBizImpl();
		  String flag=request.getParameter("flag");
		if(flag.equals("docheckcompanyname")){
			String companyname=request.getParameter("companyname");
			//根据企业简称查询企业的信息
			if(!companyname.equals("请输入公司名")&&companyname!=null&&!companyname.equals("")){
				Company com=biz.selectCompanyByName(companyname);
				if(com!=null){
					out.print(1);//表示该用户存在可以登录
				}else{
					out.print(0);//表示该用户还没有注册
				}
			}else{
				out.print(2);//表示该公司不能为空或null
			}
			out.flush();
			out.close();
		}
		//验证登录
		if(flag.equals("docheckcompanylogin")){
			String companyname=request.getParameter("email");
			String password=request.getParameter("password");
			Company com=biz.selectCompanyByName(companyname);
			if(com!=null){
				if(com.getCompany_password().equals(password)){
					HttpSession session=(HttpSession)request.getSession();
					session.setAttribute("company", com);
					out.print("<script>location.href='companyhome.jsp';</script>");
					//request.getRequestDispatcher("companyhome.jsp").forward(request, response);
				}
			}else{
				out.print("<script>history.go(-1);</script>");
			}
			out.flush();
			out.close();
		}
		//注册的验证
		if(flag.equals("checkcompanyname")){
			String companyname=request.getParameter("companyname");
			if(!companyname.equals("请输入公司名")&&companyname!=null&&!companyname.equals("")){
				Company com=biz.selectCompanyByName(companyname);
				if(com!=null){
					out.print(0);//表示该公司名已经被注册
				}else{
					out.print(1);//表示该公司名可以注册
				}
			}else{
				out.print(2);//表示该公司不能为空
			}
			out.flush();
			out.close();
		}
		if(flag.equals("checkcompanyregister")){
			String password=request.getParameter("password");
			String companyname=request.getParameter("email");
			Company com=new Company();
			com.setCompany_loginName(companyname);
			com.setCompany_password(password);
			if(biz.addCompany(com)){
			 	out.print("<script>location.href='logincompany.jsp';</script>");
			}else{
				out.print("<script>location.href='registercompany.jsp';alert('添加失败！！！');</script>");
			}
			out.flush();
			out.close();
		}
		if(flag.equals("completeCompanyInfo")){
			String savepath=request.getRealPath("/Upload");
			int maxsize=1024*1024*1024;
			MultipartRequest mr=new MultipartRequest(request,savepath,maxsize,"utf-8",new RenamePolicyCos());
			try {
				String filename=FileUp.uploadfiles(mr);
				int id=Integer.parseInt(mr.getParameter("myname"));
				String name=mr.getParameter("myname1");
				String loginname=mr.getParameter("myname2");
				String password=mr.getParameter("mypassword");
				String city=mr.getParameter("city");
				String attibute=mr.getParameter("select_industry");
				String scale=mr.getParameter("myname3");
				String email=mr.getParameter("myname4");
				String tel=mr.getParameter("myname5");
				String info=mr.getParameter("temptation");
				Company com=new Company(id, name, loginname, password,attibute, scale, city, email, tel, info, filename);
				if(biz.updateCompany(com)){
					if(com.getCompany_photo().equals("/null")){
						com.setCompany_photo(biz.selectCompanyByName(loginname).getCompany_photo());
					}
					HttpSession session=(HttpSession)request.getSession();
					session.setAttribute("company", com);
				
	
                 //request.getRequestDispatcher("companyhome.jsp").forward(request, response);
					out.print("<script>location.href='companyhome.jsp';</script>");
					
				}else{
					out.print("<script>alert('添加失败！！！');location.href='completecompanyInfo.jsp'</script>");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.flush();
			out.close();
			
		}
		if(flag.equals("userlookcompanyInfo")){
			String myid=request.getParameter("myid");
			String myjobid=request.getParameter("myjobid");
		    Company com=biz.querycompany(Integer.parseInt(myid));
		    Job job=jbiz.queryjb(Integer.parseInt(myjobid));
		    request.setAttribute("company", com);
		    request.setAttribute("job", job);
		    request.getRequestDispatcher("sendresume.jsp").forward(request, response);
		    
			out.flush();
			out.close();
		}
		if(flag.equals("queryjob")){
			Company com=(Company) request.getSession().getAttribute("company");
			int compangyid=com.getCompany_id();
			List<Job> list=biz.queryjobByCompanyId(compangyid);
			request.setAttribute("joblist", list);
			request.getRequestDispatcher("/Team6/companyhome.jsp").forward(request, response);
		}
		if(flag.equals("addcompanyid_resumeid")){
			CompanyResumeBiz crbiz=new CompanyResumeBizImpl();
			String resumeid=request.getParameter("resumeid");
			String companyid=request.getParameter("companyid");
		    List<CompanyResume> cr=crbiz.selectInfo(Integer.parseInt(companyid));
		    int i;
		    for( i=0;i<cr.size();i++){
		    	if(cr.get(i).getResume_id()==Integer.parseInt(resumeid)){
		    		out.print("<script>alert('该简历已经投递过该公司！！');history.go(-1);</script>");
		    		break;
		    	}
		    }
		    if(i>=cr.size()){
		    	CompanyResume cr1=new CompanyResume();
				cr1.setCompany_id(Integer.parseInt(companyid));
				cr1.setResume_id(Integer.parseInt(resumeid));
				if(crbiz.addCompany_resume(cr1)){
					out.print("<script>alert('投递简历成功');location.href='index.jsp';</script>");
				}else{
					out.print("<script>alert('投递简历失败');</script>");
				}
		    }
			//history很重要
			out.flush();
			out.close();
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
