<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>

<html xmlns:wb="http://open.weibo.com/wb">
<head>
<base href="<%=basePath%>">
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>企业基本信息</title>
<meta content="23635710066417756375" property="qc:admins">
<meta content="IT Offer是针对IT行业的校招或社招的人员提供一个更好的平台" name="description">
<meta content="IT招聘,IT网,IT,互联网招聘, 移动互联网招聘,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘, 社交招聘, 校园招聘, 校招,社招" name="keywords">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<meta http-equiv="Content-Type" content="multipart/form-data; "> 
<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
console.log(1);
</script>
<link href="#" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
function checkloginname(){
	var name=document.getElementById("myid2").value;
	if(name==null||name==""){
		document.getElementById("mylable3").innerHTML="<font color='red'>公司简称不能为空</font>";
		return false;
		}else{
			return true;
			}
}
function cleanloginname(){
	doocument.getElementById("mylable3").innerHML="";
}
function check(){
	if(checkemail()&&checktel()&&checkname()&&checkloginname()){
		return true;
		}else{
			return false;
			}
}
function checkemail(){
	var op=document.getElementById("myid4").value;
	var regex=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
	if(regex.test(op)){
		return true;
		}else{
			if(op==null||op==""){
				 return true;
				}else{
					document.getElementById("mylable1").innerHTML="<font color='red'>格式不正确</font>";
					return false;
					}	
			}
}
function cleanemail(){
	document.getElementById("mylable1").innerHTML="";
}
function checktel(){
	var op=document.getElementById("myid5").value;
	var regex=/^([0-9]{3,5}-)+([0-9]{3,5}-)+([0-9]{3,5})$/;
		if(regex.test(op)){
			return true;
			}else{
				if(op==null||op==""){
					return true;
					}else{
						document.getElementById("mylable2").innerHTML="<font color='red'>格式不正确</font>";
						return false;
						}
				}
}
function  cleantel(){
	document.getElementById("mylable2").innerHTML="";
}
function checkname(){
	var op=document.getElementById("myid1").value;
	if(op==null||op==""){
		document.getElementById("mylable").innerHTML="<font color='red'>公司全称不能为空</font>";
		return false;
		}else{
			var len=op.length;
			var str="有限公司";
			var len1=len-str.length;
			if(len1!=0){
				if(op.lastIndexOf(str)==len1&&op.lastIndexOf(str)==op.indexOf(str)){
					return true;
					}
				else{
					document.getElementById("mylable").innerHTML="<font color='red'>格式不正确</font>";
					return false;
					}	
			}else{
					document.getElementById("mylable").innerHTML="<font color='red'>格式不正确</font>";
					return false;
					}	
			}
}
function cleanname(){
	document.getElementById("mylable").innerHTML="";
}


</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
<div id="body">
	
  <div id="container">
        <div class="content_mid">
        	<dl class="c_section c_section_mid">
                <dt>
                    <h2><em></em>完善企业信息</h2>
                </dt>
                <dd>
	                <form id="stepForm" action="CompanyServlet?flag=completeCompanyInfo" method="post" enctype="multipart/form-data">
	                	<div class="c_text_1">基本信息为必填项</div>
	                	<input type="hidden" id="myid" name="myname" value="${sessionScope.company.company_id}"></input>
	                	<input type="hidden" value="${sessionScope.company.company_password}" name="mypassword"></input>
	                    <h3>公司全称：  <input     placeholder="****有限公司"   value="${sessionScope.company.company_name}"  type="text"   type="" id="myid1" name="myname1" onblur="checkname()" onclick="cleanname()"><lable id="mylable"></lable></h3>
	                    
	                    <h3>公司简称： <input   readonly="readonly" value="${sessionScope.company.company_loginName}" type="text" placeholder="" id="myid2" name="myname2"  onblur="checkloginname()" onclick="cleanloginname()"><lable id="mylable3"></lable></h3>
	                    
	                    <h3>企业地址：<input   value="${sessionScope.company.company_address}"   type="text" placeholder="请输入工作城市，如：北京" name="city" id="city"></h3>
	                    
	                    <h3>行业领域:<input   value="${sessionScope.company.company_attibute}"  placeholder="如  互联网" type="text" value="" name="select_industry" id="select_industry" class=""></h3>
	                    
	                    <h3>公司规模：<input value="${sessionScope.company.company_scale}"   placeholder="如  150-500人" type="text" value="" id="myid3" name="myname3"></h3>
	                    
	                    <h3>企业邮箱：<input  value="${sessionScope.company.company_email}"   placeholder="如  ****@sina.com" type="text" value="" id="myid4" name="myname4" onblur="checkemail()" onclick="cleanemail()" ><lable id="mylable1"></lable></h3>
	                    
	                    <h3>企业电话：<input  value="${sessionScope.company.company_tel}"  placeholder="如  88888-999-555 3-5个" type="text" value="" id="myid5" name="myname5" onblur="checktel()" onclick="cleantel()"></input><lable id="mylable2"></lable></h3>
	                    
	                    <h3>公司LOGO:</h3> 
	                   	<div class="c_logo c_logo_pos" >
	                    	 
						 <input type="file" id="myfile" name="filename">
						 <img src="Upload${sessionScope.company.company_photo}"></img>
						 
	                    </div>
	                    <h3>企业简介： <textarea    placeholder="一句话概括公司亮点，如公司愿景、领导团队等"  name="temptation" id="temptation">${sessionScope.company.company_info}</textarea></h3>
	                    	
	                    <input type="submit" value="提交" id="stepBtn" onclick="return check()"   class="btn_big fr"></input>
	                </form>
	             </dd>
            </dl>
       	</div>
       	</div>
       	
       	</div>
       	</body>
       	</html>
   