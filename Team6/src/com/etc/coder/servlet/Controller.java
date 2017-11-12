package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.coder.biz.CityBiz;
import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.biz.CriticismBiz;
import com.etc.coder.biz.MessageBiz;
import com.etc.coder.biz.impl.CityBizImpl;
import com.etc.coder.biz.impl.CompanyBizImpl;
import com.etc.coder.biz.impl.CriticismBizImpl;
import com.etc.coder.biz.impl.MessageBizImpl;
import com.etc.coder.entity.City;
import com.etc.coder.entity.Criticism;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Message;
import com.etc.coder.entity.User;
import com.google.gson.Gson;

public class Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String flag=request.getParameter("flag");
		if(flag!=null){
			if(flag.equals("queryAllCity")){
				CityBiz biz=new CityBizImpl();
				List<City> list=biz.queryAllCity();
				Gson gson=new Gson();
				String cityList=gson.toJson(list);
				out.print(cityList);
				out.flush();
				out.close();
			}
			if(flag.equals("postdiscuss")){
					String title=request.getParameter("title");
					String text=request.getParameter("content").trim();
					DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					String date=format.format(new Date());
					User user=(User) request.getSession().getAttribute("user");
					int userid=user.getUser_id();
					MessageBiz biz=new MessageBizImpl();
					if(biz.addMessage(title, text, date,userid)){
						out.print("<script>location.href='/Team6/Controller?flag=showdiscuss';</script>");
					}else{
						out.print("<script>alert('发布失败');history.go(-1);</script>");
					}
					out.flush();
					out.close();
			}
			if(flag.equals("showdiscuss")){
				MessageBiz biz=new MessageBizImpl();
				//记录总条数
				int total=biz.queryCountMessage();
				//每页显示条数
				int size=10;
				//总页数
				int totalpage=total%size==0?total/size:total/size+1;
				//当前页数
				int curpage=0;
				String str=request.getParameter("page");
				if(str!=null){
					curpage=Integer.valueOf(str);
				}
				//当前页码容错
				curpage=curpage>totalpage?totalpage:curpage;
				curpage=curpage<=0?1:curpage;
				
				
				List<Message> list=biz.queryAllMessageByPage(curpage, size);
				
				request.setAttribute("list", list);
				request.setAttribute("curpage", curpage);
				request.setAttribute("totalpage", totalpage);
				request.getRequestDispatcher("/discuss.jsp").forward(request, response);
			}
			if(flag.equals("entryPostDiscuss")){
				Object id=request.getSession().getAttribute("user");
				if(id==null){
					out.print("<script>alert('请先登录');history.go(-1);</script>");
				}else{
					out.print("<script>location.href='postdiscuss.jsp';</script>");
				}
			}
			if(flag.equals("showdetail")){
				int messageid=Integer.valueOf(request.getParameter("messageid"));
				MessageBiz biz=new MessageBizImpl();
				Message message=biz.queryMessageById(messageid);
				//还需要查询出该条留言下的评论
				CriticismBiz cribiz=new CriticismBizImpl();
				List<Criticism> list=cribiz.queryCriticismByMessageId(messageid);
				request.setAttribute("crilist", list);
				request.setAttribute("message", message);
				request.getRequestDispatcher("/detail.jsp").forward(request, response);
			}
			if(flag.equals("postcriticism")){
				User user=(User) request.getSession().getAttribute("user");
				int userid=user.getUser_id();
				int messageid=Integer.valueOf(request.getParameter("messageid"));
				String criticism_text=request.getParameter("criticism");
				DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String criticism_date=format.format(new Date());
				CriticismBiz biz=new CriticismBizImpl();
				biz.addCriticism(messageid, criticism_text, criticism_date,userid);
				request.setAttribute("messageid", messageid);
				request.getRequestDispatcher("/Controller?flag=showdetail").forward(request, response);
			}
			if(flag.equals("queryPositionJob")){
				int companyid=Integer.valueOf(request.getParameter("companyid"));
				CompanyBiz biz=new CompanyBizImpl();
				List<Job> list=biz.queryjobByCompanyId(companyid);
				request.setAttribute("joblist", list);
				request.getRequestDispatcher("/showpositionjob.jsp").forward(request, response);
			}
		}
	}
}
