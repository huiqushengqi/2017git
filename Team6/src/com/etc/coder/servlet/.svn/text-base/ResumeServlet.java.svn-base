package com.etc.coder.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.coder.biz.ResumeBiz;
import com.etc.coder.biz.impl.ResumeBizImpl;
import com.etc.coder.dao.BasicDao;
import com.etc.coder.dao.EducationDao;
import com.etc.coder.dao.JobDao;
import com.etc.coder.dao.JobExpectDao;
import com.etc.coder.dao.ProjectDao;
import com.etc.coder.dao.ResumeDao;
import com.etc.coder.dao.WorkDao;
import com.etc.coder.dao.impl.BasicDaoImpl;
import com.etc.coder.dao.impl.EducationDaoImpl;
import com.etc.coder.dao.impl.JobDaoImpl;
import com.etc.coder.dao.impl.JobExpectDaoImpl;
import com.etc.coder.dao.impl.ProjectDaoImpl;
import com.etc.coder.dao.impl.ResumeDaoImpl;
import com.etc.coder.dao.impl.WorkDaoImpl;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.User;
import com.etc.coder.entity.Workexp;
import com.etc.coder.util.FileUp;
import com.etc.coder.util.RenamePolicyCos;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

public class ResumeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ResumeServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String flag = request.getParameter("flag");
		if (flag != null) {
			if (flag.equals("addbasic")) {
				String savepath = request.getRealPath("/Upload");// 创建上传文件存放地址
				int maxsize = 1024 * 1024 * 1024;// 设置上传文件大小
				// 创建MultipartRequest对象
				MultipartRequest mul = new MultipartRequest(request, savepath, maxsize, "utf-8", new RenamePolicyCos());
				String filename = "";
				// 调用文件上传方法，返回文件名
				try {
					filename = FileUp.uploadfiles(mul);
				} catch (Exception e) {
					// TODO: handle exception
				}
				request.setCharacterEncoding("utf-8");
				String name = mul.getParameter("name");
				String gender = mul.getParameter("gender");
				String birth = mul.getParameter("birth");
				String idnub = mul.getParameter("idnub");
				String email = mul.getParameter("email");
				String mphone = mul.getParameter("tel");
				String addr = mul.getParameter("addr");
				String state = mul.getParameter("currentState");
				String img = filename;
				// String img=mul.getParameter("filename");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				BasicInfor basic = new BasicInfor();
				basic.setBasic_name(name);
				basic.setBasic_gender(gender);
				basic.setBasic_birthday(birth);
				basic.setBasic_idNumber(idnub);
				basic.setBasic_home(addr);
				basic.setBasic_email(email);
				basic.setBasic_mobilePhone(mphone);
				basic.setBasic_state(state);
				basic.setBasic_photo(img);

				ResumeDao dao = new ResumeDaoImpl();
				HttpSession session = request.getSession();
				session.setAttribute("basic", basic);
				int basicid = dao.addBasic(basic);
				if (basicid > 0) {

					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
				out.flush();
				out.close();
			}
			if (flag.equals("addjobexpect")) {
				request.setCharacterEncoding("utf-8");
				String addr = request.getParameter("expectCity");
				String type = request.getParameter("type");
				String job = request.getParameter("expectPosition");
				String salary = request.getParameter("expectSalary");
				Jobexpect expect = new Jobexpect();
				expect.setExpect_address(addr);
				expect.setExpect_type(type);
				expect.setExpect_job(job);
				expect.setExpect_salary(salary);
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				ResumeDao dao = new ResumeDaoImpl();
				HttpSession session = request.getSession();
				session.setAttribute("expect", expect);
				int expectid = dao.addJobExpect(expect);
				if (expectid > 0) {

					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
				out.flush();
				out.close();
			}
			if (flag.equals("addworkexp")) {
				request.setCharacterEncoding("utf-8");
				String company = request.getParameter("companyName");
				String duty = request.getParameter("positionName");
				String companyYearStart = request.getParameter("companyYearStart");
				String companyMonthStart = request.getParameter("companyMonthStart");
				String companyYearEnd = request.getParameter("companyYearEnd");
				String companyMonthEnd = request.getParameter("companyMonthEnd");
				String startTime = companyYearStart + "." + companyMonthStart;// 工作开始时间
				String endTime = companyYearEnd + "." + companyMonthEnd;// 工作结束时间
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				Workexp work = new Workexp();
				work.setWork_company(company);
				work.setWork_resp(duty);
				work.setWork_starttime(startTime);
				work.setWork_endtime(endTime);
				ResumeDao dao = new ResumeDaoImpl();
				HttpSession session = request.getSession();
				session.setAttribute("work", work);
				int workid = dao.addWorkExp(work);
				if (workid > 0) {
					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
				out.flush();
				out.close();
			}
			if (flag.equals("addprojectexp")) {
				request.setCharacterEncoding("utf-8");
				String projectName = request.getParameter("projectName");
				String thePost = request.getParameter("thePost");
				String projectYearStart = request.getParameter("projectYearStart");
				String projectMonthStart = request.getParameter("projectMonthStart");
				String projectYearEnd = request.getParameter("projectYearEnd");
				String projectMonthEnd = request.getParameter("projectMonthEnd");
				String projectDescription = request.getParameter("projectDescription");
				String startTime = projectYearStart + "." + projectMonthStart;// 项目开始时间
				String endTime = projectYearEnd + "." + projectMonthEnd;// 项目结束时间
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				Projectexp project = new Projectexp();
				project.setProject_name(projectName);
				project.setProject_duty(thePost);
				project.setProject_stattime(startTime);
				project.setProject_endtime(endTime);
				project.setProject_depict(projectDescription);
				ResumeDao dao = new ResumeDaoImpl();
				HttpSession session = request.getSession();
				session.setAttribute("project", project);
				int projectid = dao.addProjectExp(project);
				if (projectid > 0) {
					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
				out.flush();
				out.close();
			}
			if (flag.equals("addeducation")) {
				request.setCharacterEncoding("utf-8");
				String schoolName = request.getParameter("schoolName");
				String degree = request.getParameter("degree");
				String professionalName = request.getParameter("professionalName");
				String schoolYearStart = request.getParameter("schoolYearStart");
				String schoolYearEnd = request.getParameter("schoolYearEnd");

				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				Education edu = new Education();
				edu.setEdu_School(schoolName);
				edu.setEdu_cations(degree);
				edu.setEdu_Major(professionalName);
				edu.setEdu_StartDate(schoolYearStart);
				edu.setEdu_EndDate(schoolYearEnd);
				ResumeDao dao = new ResumeDaoImpl();
				HttpSession session = request.getSession();
				session.setAttribute("edu", edu);
				int eduid = dao.addEducation(edu);
				if (eduid > 0) {
					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
				out.flush();
				out.close();
			}
			if (flag.equals("addresume")) {
				request.setCharacterEncoding("utf-8");
				String resumeName = request.getParameter("resumeName");
				String username = request.getParameter("name");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				ResumeDao dao = new ResumeDaoImpl();
				Resume res = new Resume();
				res.setResume_name(resumeName);
				res.setResume_user(username);
				res.setResume_basic(dao.queryBasicMaxId());
				res.setResume_job(dao.queryJobExpectMxId());
				res.setResume_work(dao.queryWorkExpMaxId());
				res.setResume_project(dao.queryProjectMaxId());
				res.setResume_edu(dao.queryEducationMaxId());

				Date date = new Date();
				DateFormat df = new SimpleDateFormat("YYYY-MM-dd HH:mm");
				String time = df.format(date);
				HttpSession session = request.getSession();
				session.setAttribute("res", res);
				session.setAttribute("time", time);
				if (dao.addresume(res)) {
					out.print("<script>alert('保存成功！');location.href='resume.jsp';</script>");
				} else {
					out.print("<script>alert('保存失败，请重新填写');history.go(-1);</script>");
				}
			}
			if (flag.equals("queryallresume")) {
				ResumeDao dao1 = new ResumeDaoImpl();
				User user = (User) request.getSession().getAttribute("user");
				String name = user.getUser_name();
				List<Resume> list = dao1.queryAllResume(name);
				for (int i = 0; i < list.size(); i++) {
					BasicDao daob = new BasicDaoImpl();
					BasicInfor bs = daob.queryOneBasic(list.get(i).getResume_basic());
					request.setAttribute("bs" + i, bs);

					EducationDao daoe = new EducationDaoImpl();
					Education edu = daoe.queryOneEdu(list.get(i).getResume_edu());
					request.setAttribute("edu" + i, edu);

					JobDao dao = new JobDaoImpl();
					Job jb = dao.queryjb(list.get(i).getResume_job());
					request.setAttribute("jb" + i, jb);

					ProjectDao daop = new ProjectDaoImpl();
					Projectexp pj = daop.queryOneProject(list.get(i).getResume_project());
					request.setAttribute("pj" + i, pj);

					WorkDao daow = new WorkDaoImpl();
					Workexp wk = daow.queryOneWork(list.get(i).getResume_work());
					request.setAttribute("wk" + i, wk);// "wk"+i

					JobExpectDao daoj = new JobExpectDaoImpl();
					Jobexpect je = daoj.queryOneJobExpect(list.get(i).getResume_job());
					request.setAttribute("je" + i, je);

				}
				PrintWriter out = response.getWriter();
				if (list != null) {
					request.setAttribute("rlist", list);
					request.getRequestDispatcher("queryresume.jsp").forward(request, response);

				} else {
					out.println("<script>alert('岗位审核完毕，无需审核');history.go(-1);</script>");
				}

			}
			if(flag.equals("queryresumebyname")){
				ResumeDao dao1 = new ResumeDaoImpl();
			    User user=(User) request.getSession().getAttribute("user");
				String name=user.getUser_name();
				PrintWriter out = response.getWriter();
				if(name!=null){
					List<Resume> list = dao1.queryAllResume(name);
					
					Gson gson=new Gson();
					String str=gson.toJson(list);
					if(list!=null){
					out.print(str);
						//request.setAttribute("list", list);
						//request.getRequestDispatcher("sendresume.jsp").forward(request, response);
		
					}else{
						out.print("<script>alert('莫有简历，创建简历');history.go(-1);</script>");
					}
				}else{
					out.print("<script>alert('用户名为空');history.go(-1);</script>");
				}
				
				out.flush();
				out.close();
				
			}
		}

	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
