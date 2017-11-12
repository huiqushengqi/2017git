<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-IT Offer</title>
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


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
<script type="text/javascript">
var b=false;
  function checkcompany(op){
	   $.get("CompanyServlet",{flag:"checkcompanyname",companyname:op},function(data){
		   if(data==0){
			   $("#mydiv1").html("<font color='red'>该公司名已经被注册</font>");
			   return b;
			   }
		   if(data==1){
			   $("#mydiv1").html("<font color='Green'>正确</font>");
			   b=true;
			   return b;
			   }
		   if(data==2){
			   $("#mydiv1").html("<font color='red'>公司名不能为空</font>");
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
        	<img src="style/images/logo_white.png" width="285" height="62" alt="IT Offer" />
            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />		
		<div class="login_box">
        	<form id="loginForm" action="CompanyServlet?flag=checkcompanyregister" method="post">
        	    <ul class="register_radio clearfix">
		            <li  onclick="myjob()">
		            	找工作
		              	<input type="radio" value="0" name="type" /> 
		            </li>
		            <li  onclick="myjob1()">
		           	           招人
		              	<input type="radio" value="1" name="type" /> 
		            </li>
		  </ul> 
            	<input type="text" id="email" name="email" tabindex="1" placeholder="请输入公司名"  onblur="checkcompany(this.value)" onfocus="cleancompany()"/><div id="mydiv1"></div>
                <span class="error" style="display:none;" id="beError"></span>
                <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
            	<label class="fl registerJianJu" for="checkbox">
            		<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />我已阅读并同意<a href="#" >《IT Offer用户协议》</a>
           		</label>
                <input type="submit" id="submitLogin"  onclick="return check()" value="注 &nbsp; &nbsp; 册" />
                
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
    
    <script type="text/javascript">
    function myjob(){
    
        location.href="register.jsp";
        }
    function myjob1(){
    	
        location.href="#";
        }
    
    $(document).ready(function(e) {
    	$('.register_radio li input').click(function(e){
    		$(this).parent('li').addClass('current').append('<em></em>').siblings().removeClass('current').find('em').remove();	
    	});
    });
    </script>
</body>
</html>
