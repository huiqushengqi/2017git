<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IT offer</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="IT Offer是针对IT行业的校招或社招的人员提供一个更好的平台" name="description">
<meta content="IT招聘,IT网,IT,互联网招聘, 移动互联网招聘,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘, 社交招聘, 校园招聘, 校招,社招" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="#">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>



<script type="text/javascript" src="style/js/conv.js"></script>
<script type="text/javascript">
var b=false;
  function checkcompany(op){
	   $.get("CompanyServlet",{companyname:op,flag:"docheckcompanyname"},function(data){
		   if(data==0){
			   $("#mydiv1").html("<font color='red'>不存在该公司</font>");
			   return b;
			   }
		   if(data==1){
			   $("#mydiv1").html("<font color='Green'>正确</font>");
			   b=true;
			   return b;
			   }
		   if(data==2){
			   $("#mydiv1").html("<font color='red'>不能为空</font>");
			   return b;
			   }
		   });
	  }
  function cleancompany() {
	  $("#mydiv1").html("");
	
}
  function check() {
	if(b){
		return true;
		}
	return false;	
}
</script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
             <img src="style/images/logo.png" width="200" height="62" />
            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
       
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<form id="loginForm" action="CompanyServlet?flag=docheckcompanylogin" method="post" >
				<input type="text" id="email" name="email" value="" onblur="checkcompany(this.value)" onfocus="cleancompany()" tabindex="1" placeholder="请输入公司名" /><div id="mydiv1"></div>
			  	<input type="password" id="password" name="password"  placeholder="请输入密码" /><div id="mydiv2"></div> 
				<span class="error" style="display:none;" id="beError"></span>
			    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
			    <a href="registercompany.jsp" class="fr"  style="text-decoration: underline">公司不存在？立即注册</a>
			    
				<!--<input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />-->
				<input  type="submit"  style="color:#fff;" onclick="return check()" class="submitLogin" value="登 &nbsp; &nbsp; 录"/> 

			    
			    <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
			</form>
			<div class="login_right">
				<img src="style/images/45.png" width="165" height="180"/>
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div>
</body>
</html>