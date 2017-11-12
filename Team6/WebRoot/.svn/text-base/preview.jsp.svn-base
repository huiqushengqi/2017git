<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'preview.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
.bg {
    background-color:#E6E6FA;
    width:600px;
    font-weight:3;
    text-align: center;
    margin: 0 auto;
   margin-top: 30px;
}
.nfirst{
	width:100px;
	height: 40px;
	direction: ltr;
}
.nsecond{
	width:100px;
	heigth:50px;
	background-color:  	#008B8B;
	text-align: center;
	position:absolute; top:10px; right:10px;

}
</style>
  </head>
  
  <body bgcolor="#266451">
  <div class="nsecond"><a href="resume.jsp" style="color:black">返回</a></div>
   
    <div class="bg">
    <table border="1" width="600px" align="center">
    	<tr class="nfirst">
    		<th colspan="5" align="center">简历名称${sessionScope.resume.resume_name }</th>
    		
    	</tr>
    	<tr class="nfirst">
    		<td colspan="4"><em>基本信息</em></td><td rowspan="3"></td>
    	</tr>
    	<tr class="nfirst">
    	<td>姓名：</td><td>${sessionScope.basic.basic_name }</td><td>性别：</td><td>${sessionScope.basic.basic_gender }</td>  	
    	</tr>
    	<tr class="nfirst"><td>出生日期：</td><td>${sessionScope.basic.basic_birthday }</td><td class="nfirst">身份证号：</td><td>${sessionScope.basic.basic_idnumber }</td></tr>
    	<tr class="nfirst"><td>家庭住址：</td><td colspan="4">${sessionScope.basic.basic_home }</td></tr>
    	<tr class="nfirst"><td>手机号：</td><td>${sessionScope.basic.basic_mobilephone }</td><td class="nfirst">邮箱：</td><td colspan="2">${sessionScope.basic.basic_email }</td></tr>
    	<tr class="nfirst"><td>当前状态：</td><td colspan="4">${sessionScope.basic.basic_state }</td></tr>
    	<tr class="nfirst">
    		<td colspan="5"><em>期望工作</em></td>
    	</tr>
    	<tr class="nfirst"><td>期望城市：</td><td>${sessionScope.expect.expect_address }</td><td class="nfirst">工作类型：</td><td colspan="2">${sessionScope.expect.expect_type }</td></tr>
    	<tr class="nfirst"><td>期望职位：</td><td>${sessionScope.expect.expect_job }</td><td class="nfirst">期望月薪：</td><td colspan="2">${sessionScope.expect.expect_salary }</td></tr>
    	<tr class="nfirst">
    		<td colspan="5"><em>工作经历</em></td>
    	</tr>
    	<tr class="nfirst"><td>公司名称：</td><td>${sessionScope.work.work_company}</td><td class="nfirst">担任职位：</td><td colspan="2">${sessionScope.work.work_resp}</td></tr>
    	<tr><td class="nfirst">开始时间：</td><td>${sessionScope.work.work_starttime}</td><td class="nfirst">结束时间：</td><td colspan="2">${sessionScope.work.work_endtime}</td></tr>
    	<tr class="nfirst">
    		<td colspan="5"><em>项目经验</em></td>
    	</tr>
    	<tr class="nfirst"><td>项目名称：</td><td>${sessionScope.project.project_name}</td><td class="nfirst">担任职务：</td><td colspan="2">${sessionScope.project.project_duty}</td></tr>
    	<tr class="nfirst"><td>开始时间：</td><td>${sessionScope.project.project_stattime}</td><td class="nfirst">结束时间：</td><td colspan="2">${sessionScope.project.project_endtime}</td></tr>
    	<tr class="nfirst"><td colspan="5">项目描述：</td></tr>
    	<tr class="nfirst"><td colspan="5" rowspan="3">${sessionScope.project.project_depict}</td></tr>
    	<tr class="nfirst"></tr>
    	<tr class="nfirst"></tr>
    	<tr class="nfirst">
    		<td colspan="5"><em>教育背景</em></td>
    	</tr>
    	<tr class="nfirst"><td>学校名称：</td><td>${sessionScope.edu.edu_School}</td><td class="nfirst">学历：</td><td colspan="2">${sessionScope.edu.edu_cations}</td></tr>
    	<tr class="nfirst"><td>专业名称：</td><td colspan="4">${sessionScope.edu.edu_Major}</td></tr>
    	<tr class="nfirst"><td>开始时间：</td><td>${sessionScope.edu.edu_StartDate}</td><td class="nfirst">结束时间：</td><td colspan="2">${sessionScope.edu.edu_EndDate}</td></tr>
    </table>
    </div>
   
  </body>
</html>
