
package com.etc.coder.entity;

public class Jobexpect {
	 private int  expect_id;
     private String expect_address;    //期望城市
     private String expect_type;     //期望工作类型
     private String expect_salary;   //期望月薪
     private String expect_job;       //期望岗位
     
     public String getExpect_type() {
		return expect_type;
	}
	public void setExpect_type(String expect_type) {
		this.expect_type = expect_type;
	}
	public String getExpect_salary() {
		return expect_salary;
	}
	public void setExpect_salary(String expect_salary) {
		this.expect_salary = expect_salary;
	}
	
	public int getExpect_id() {
		return expect_id;
	}
	public void setExpect_id(int expectId) {
		expect_id = expectId;
	}
	public String getExpect_address() {
		return expect_address;
	}
	public void setExpect_address(String expectAddress) {
		expect_address = expectAddress;
	}
	public String getExpect_job() {
		return expect_job;
	}
	public void setExpect_job(String expectJob) {
		expect_job = expectJob;
	}
}
