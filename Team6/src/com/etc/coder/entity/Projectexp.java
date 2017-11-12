
package com.etc.coder.entity;
public class Projectexp {

		private int  project_id;
		private String  project_stattime;   //项目开始时间
		private String  project_endtime;    //项目结束时间
		private String project_name;     //项目名称
		private String project_duty;   //担任职务		
		private  String  project_depict;   //项目描述
		
		public String getProject_duty() {
			return project_duty;
		}
		public void setProject_duty(String project_duty) {
			this.project_duty = project_duty;
		}
		public int getProject_id() {
			return project_id;
		}
		public void setProject_id(int projectId) {
			project_id = projectId;
		}
		public String getProject_stattime() {
			return project_stattime;
		}
		public void setProject_stattime(String projectStattime) {
			project_stattime = projectStattime;
		}
		public String getProject_endtime() {
			return project_endtime;
		}
		public void setProject_endtime(String projectEndtime) {
			project_endtime = projectEndtime;
		}
		public String getProject_name() {
			return project_name;
		}
		public void setProject_name(String projectName) {
			project_name = projectName;
		}
		public String getProject_depict() {
			return project_depict;
		}
		public void setProject_depict(String projectDepict) {
			project_depict = projectDepict;
		}

	}
