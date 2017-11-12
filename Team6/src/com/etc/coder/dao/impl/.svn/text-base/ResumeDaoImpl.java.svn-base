package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.etc.coder.biz.TechnologytypeBiz;
import com.etc.coder.biz.impl.TechnologytypeBizImpl;
import com.etc.coder.dao.BasicDao;
import com.etc.coder.dao.EducationDao;
import com.etc.coder.dao.JobDao;
import com.etc.coder.dao.ProjectDao;
import com.etc.coder.dao.ResumeDao;
import com.etc.coder.dao.WorkDao;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;
import com.etc.coder.util.JNDIUtil;

public class ResumeDaoImpl implements ResumeDao{

	JNDIUtil util=new JNDIUtil();

	/**
	 * 添加个人信息的方法
	 * @return 返回该字段的id
	 */
	public int addBasic(BasicInfor basic) {
	
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_addbasic(?,?,?,?,?,?,?,?,?,?)",list, basic.getBasic_name(),basic.getBasic_birthday(),basic.getBasic_gender(),basic.getBasic_idNumber(),basic.getBasic_email(),basic.getBasic_mobilePhone(),basic.getBasic_state(),basic.getBasic_home(),basic.getBasic_photo());
		int i=(Integer) obj[0];
		return i;
	}
	/**
	 * 添加期望工作的方法
	 * @param job
	 * @return  返回该字段的id
	 */
	public int addJobExpect(Jobexpect job){
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_addjobexpect(?,?,?,?,?)",list, job.getExpect_address(),job.getExpect_type(),job.getExpect_job(),job.getExpect_salary());
		int i=(Integer) obj[0];
		return i;
	}
	/**
	 * 添加工作经历的方法
	 * @return  返回该字段的id
	 */
	public int addWorkExp(Workexp work) {
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_addworkexp(?,?,?,?,?)",list, work.getWork_company(),work.getWork_resp(),work.getWork_starttime(),work.getWork_endtime());
		int i=(Integer) obj[0];
		return i;
	}

	/**
	 * 添加项目经验的方法
	 * @return  返回该字段的id
	 */
	public int addProjectExp(Projectexp project) {
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_addprojectexp(?,?,?,?,?,?)",list, project.getProject_name(),project.getProject_duty(),project.getProject_stattime(),project.getProject_endtime(),project.getProject_depict());
		int i=(Integer) obj[0];
		return i;
	}
	/**
	 * 添加教育背景的方法
	 * @param ed
	 * @return  返回该字段的id
	 */
	public int addEducation(Education ed){
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_addeducation(?,?,?,?,?,?)",list, ed.getEdu_School(),ed.getEdu_cations(),ed.getEdu_Major(),ed.getEdu_StartDate(),ed.getEdu_EndDate());
		int i=(Integer) obj[0];
		return i;

	}
	/**
	 * 添加简历的方法
	 * @return  是否添加成功
	 */
	public boolean addresume(Resume res) {
		if(util.call_notreturn_proc("proc_addresume(?,?,?,?,?,?,?)",res.getResume_name(),res.getResume_basic(),res.getResume_job(),res.getResume_work(),res.getResume_project(),res.getResume_edu(),res.getResume_user())){
			return true;
		}
		return false;
	}
	
	/**
	 * 查询所有本地简历的方法
	 * @return 返回所有本地简历的集合
	 */
	public List<Resume> queryAllResume(String name) {
		ResultSet rs = util.query("select * from t_resume where resume_user=?",name);
		List<Resume> list = new ArrayList<Resume>();
		try {
			while(rs.next()){
				Resume re=new Resume();
				re.setResume_basic(rs.getInt("resume_basic"));
				re.setResume_edu(rs.getInt("resume_edu"));
				re.setResume_id(rs.getInt("resume_id"));
				re.setResume_job(rs.getInt("resume_job"));
				re.setResume_name(rs.getString("resume_name"));
				re.setResume_project(rs.getInt("resume_project"));
				re.setResume_work(rs.getInt("resume_work"));
				list.add(re);
				 
//				 BasicDao daob = new BasicDaoImpl();
//				 BasicInfor bs= daob.queryOneBasic(rs.getInt("resume_basic"));
//				 list.add(bs);
//				 
//				 EducationDao daoe = new EducationDaoImpl();
//				 Education edu = daoe.queryOneEdu(rs.getInt("resume_edu"));			
//			     list.add(edu);
//			     
//			     JobDao dao = new JobDaoImpl();
//			     Job jb = dao.queryjb(rs.getInt("resume_job"));
//			     list.add(jb);
//				 
//			     ProjectDao daop = new ProjectDaoImpl();
//			     Projectexp pj = daop.queryOneProject(rs.getInt("resume_project"));
//				 list.add(pj);
//				 
//				 WorkDao daow = new WorkDaoImpl();
//				 Workexp wk = daow.queryOneWork(rs.getInt("resume_work"));
//				 list.add(wk);
				 
				 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}
	/**
	 * 查询个人信息表id的最大值
	 */
	public int queryBasicMaxId() {
		ResultSet rs=util.query("select max(basic_id) as a from t_basic");
		BasicInfor basic =null;
		int a=0;
		try {
			if(rs.next()){
				basic =new BasicInfor();
				a=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	/**
	 * 查询期望工作表id的最大值
	 */
	public int queryJobExpectMxId() {
		ResultSet rs=util.query("select max(expect_id) as a from t_jobexpect");
		Jobexpect expect =null;
		int a=0;
		try {
			if(rs.next()){
				expect =new Jobexpect();
				a=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	/**
	 * 查询工作经历表 id的最大值
	 */
	public int queryWorkExpMaxId() {
		ResultSet rs=util.query("select max(work_id) as a from t_workexp");
		Workexp work =null;
		int a=0;
		try {
			if(rs.next()){
				work =new Workexp();
				a=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	/**
	 * 查询项目经验表id的最大值
	 */
	public int queryProjectMaxId() {
		ResultSet rs=util.query("select max(project_id) as a from t_projectexp");
		Projectexp project =null;
		int a=0;
		try {
			if(rs.next()){
				project =new Projectexp();
				a=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	/**
	 * 查询教育背景表id的最大值
	 */
	public int queryEducationMaxId() {
		ResultSet rs=util.query("select max(edu_id) as a from t_education");
		Education edu =null;
		int a=0;
		try {
			if(rs.next()){
				edu =new Education();
				a=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	
	
	

}
