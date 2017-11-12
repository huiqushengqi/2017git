
package com.etc.coder.entity;


public class Workexp {
	private int  work_id;
	private String work_company;   //  公司名称	
	private String  work_starttime;     //开始工作时间
	private String work_endtime;     //结束工作时间
	private String  work_resp;      //工作职责
	public int getWork_id() {
		return work_id;
	}
	public void setWork_id(int workId) {
		work_id = workId;
	}
	
	public String getWork_company() {
		return work_company;
	}
	public void setWork_company(String work_company) {
		this.work_company = work_company;
	}	
	public String getWork_starttime() {
		return work_starttime;
	}
	public void setWork_starttime(String work_starttime) {
		this.work_starttime = work_starttime;
	}
	public String getWork_endtime() {
		return work_endtime;
	}
	public void setWork_endtime(String work_endtime) {
		this.work_endtime = work_endtime;
	}
	public String getWork_resp() {
		return work_resp;
	}
	public void setWork_resp(String workResp) {
		work_resp = workResp;
	}
}
