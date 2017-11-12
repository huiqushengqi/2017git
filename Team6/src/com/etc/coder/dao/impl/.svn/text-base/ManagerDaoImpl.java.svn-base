package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;

import com.etc.coder.dao.ManagerDao;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Manager;
import com.etc.coder.entity.Technolgytype;
import com.etc.coder.util.JNDIUtil;

public class ManagerDaoImpl implements ManagerDao{
	JNDIUtil util = new JNDIUtil();
	ResultSet rs;

	/**
	 * 添加一个管理员的方法
	 * @param name 管理员的名字
	 * @param pwd 管理员的密码
	 * @return 返回是否添加成功
	 */
	public boolean addManager(String name, String pwd) {
		
		return util.call_notreturn_proc("proc_addmanager(?,?)", name,pwd);
	}

	/**
	 * 管理员登录方法
	 * @param name 管理员的名字
	 * @param pwd 管理员的密码
	 * @return 返回这个管理员的具体信息
	 */
	public Manager login(String name, String pwd) {
		//按照顺序注册输出类型
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_checkmanagername(?,?,?)", list, name,pwd);
		ResultSet rs=(ResultSet) obj[0];
		Manager mg = null;
		try {
			if(rs.next()){
				mg = new Manager();
				mg.setManager_id(rs.getInt("MANAGER_ID"));
				mg.setManager_name(rs.getString("MANAGER_NAME"));
				mg.setManager_password(rs.getString("MANAGER_PASSWORD"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return mg;
	}

	/**
	 * 查询是否有注册过相同的管理员的方法
	 * @param name 管理员的名字
	 * @return 返回是否有这个管理员
	 */
	public boolean checkname(String name) {
		//按照顺序注册输出类型
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_checkmanagername(?,?)", list, name);
		ResultSet rs=(ResultSet) obj[0];
		boolean f = false;
		try {
			if(!rs.next()){
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return f;
	}

	/**
	 * 管理员发布岗位的信息
	 * @param 传入一个岗位信息的对象
	 * 返回是否发布成功
	 */
	public boolean managerAddJob(Job job) {
		
		return util.call_notreturn_proc("proc_manageraddjob(?,?,?,?,?,?,?,?)", job.getJob_type(),job.getJob_name(),job.getJob_description(),job.getJob_address(),job.getJob_salary(),job.getJob_education(),job.getJob_exp(),job.getJob_date());
	}

	/**
	 * 管理员审核岗位信息并在数据库更新
	 * 返回是否通过审核
	 * 
	 */
	public boolean checkJob(int id) {
		int i = util.update("update t_job set job_issue=1 where job_id=?",id);
		if(i>0){
			return true;
		}
		
		return false;
	}

	/**
	 * 查询未通过的企业岗位
	 * @return 未通过岗位的集合
	 */
	public List<Job> queryNoCheckJob() {
		List<Job> list = new ArrayList<Job>();
		rs=util.query("select tech_id,tech_type,tech_name from t_technologytype,t_job where job_type=tech_id");
		try {
			while(rs.next()){
         		Technolgytype tech = new Technolgytype();
				tech.setTech_id(rs.getInt("tech_id"));
				tech.setTech_name(rs.getString("tech_name"));
				tech.setTech_type(rs.getString("tech_type"));
				
				rs=util.query("select * from t_job where job_issue=0");
				
				while(rs.next()){
					Job job = new Job();
					job.setJob_id(rs.getInt("job_id"));
					job.setJob_address(rs.getString("job_address"));
					job.setJob_date(rs.getString("job_date"));
					job.setJob_description(rs.getString("job_description"));
					job.setJob_education(rs.getString("job_education"));
					job.setJob_exp(rs.getString("job_exp"));
					job.setJob_name(rs.getString("job_name"));
					job.setJob_salary(rs.getString("job_salary"));
					job.setJob_type(tech);
					list.add(job);
				}
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}

	/**
	 * 查询即将审核的岗位
	 * @return 返回那个job对象
	 */
	public Job queryJob(int id) {
		//按照顺序注册输出类型
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryonejob(?,?)", list, id);
		ResultSet rs=(ResultSet) obj[0];
		ResultSet rs1;
		Job job= null;
		Technolgytype tech=null;
		try {
			if(rs.next()){
				rs1=util.query("select * from t_technologytype where tech_id=(select job_type from t_job where job_id=?)", id);
				if(rs1.next()){
	         		tech = new Technolgytype();
					tech.setTech_id(rs1.getInt("tech_id"));
					tech.setTech_name(rs1.getString("tech_name"));
					tech.setTech_type(rs1.getString("tech_type"));
				}
				job = new Job();
				job.setJob_id(rs.getInt("job_id"));
				job.setJob_address(rs.getString("job_address"));
				job.setJob_date(rs.getString("job_date"));
				job.setJob_description(rs.getString("job_description"));
				job.setJob_education(rs.getString("job_education"));
				job.setJob_exp(rs.getString("job_exp"));
				job.setJob_name(rs.getString("job_name"));
				job.setJob_salary(rs.getString("job_salary"));
				job.setJob_type(tech);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return job;
	}

}
