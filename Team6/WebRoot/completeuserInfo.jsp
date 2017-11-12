<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>个人基本信息</title>
<meta content="23635710066417756375" property="qc:admins">
<meta content="IT Offer是针对IT行业的校招或社招的人员提供一个更好的平台" name="description">
<meta content="IT招聘,IT网,IT,互联网招聘, 移动互联网招聘,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘, 社交招聘, 校园招聘, 校招,社招" name="keywords">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

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

function checkname(){
	 var name=document.getElementById("myid1").value;
	 if(name==null||name==""){
		 document.getElementById("mylable3").innerHTML="<font color='red'>用户名不能为空</font>";
		 return false;
		 }else{
			 return true;
			 }
	
}
function cleanname(){
	document.getElementById("mylable3").innerHTML="";
}
function test(){
	year();
	month();
	
}
function day(){
	var day=0;
	var str="";
	var year=document.getElementById("myyear").value;
	var month=document.getElementById("mymonth").value;
	 year=parseInt(year);
	 month=parseInt(month);
		switch(month){
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12: day=31;break;
		case 4:
		case 6:
		case 9:
		case 11:day=30;break;
		case 2:{
			if(year%400==0||(year%4==0&&year%100==0)){//闰年 2 29
				day=29;
			}else{
				day=28;
				}
			};break;
		}
		for(var i=1;i<=day;i++){
				str=str+"<option value="+i+" selected='selected'>"+i+"</option>";	
			}
		document.getElementById("myday").innerHTML=str;
}
function month(op){
	var str="";
	for(var i=1;i<=12;i++){
		if(op==i){
			str=str+"<option value="+i+" selected='selected'>"+i+"</option>";
			}else{
				str=str+"<option value="+i+">"+i+"</option>";
				}
		}
	document.getElementById("mymonth").innerHTML=str;
	day();
}
function year(op){
		var str="";
		for(var i=1970;i<=2018;i++){
			if(op==i){
				str=str+"<option value="+i+" selected='selected'>"+i+"</option>";
				}else{
					str=str+"<option value="+i+">"+i+"</option>";
					}
			}
		document.getElementById("myyear").innerHTML=str;	
	
}

function checksex(){
	var op=document.getElementById("sex").value;	
			if(op!="男"&&op!="女"){
				if(op==null||op==""){
					return true;//可以为空
					}else{
						document.getElementById("mylable").innerHTML="<font color='red'>格式不正确</font>";
						return false;
						}
			  }else{
					return true;
					}

	
}
function cleansex(){
	document.getElementById("mylable").innerHTML="";
}
function checktel(){
	var op=document.getElementById("myid5").value;
	if(op!=null&&op!=""){
		op=parseInt(op);
		var regex=/^(1[3|5|7|8|]\d{9})$/;
			if(regex.test(op)){
				return true;
				}else{
				   document.getElementById("mylable2").innerHTML="<font color='red'>格式不正确</font>";
				    return false;
					}
		}else{
			return true;
			}			
}
function cleantel(){
	document.getElementById("mylable2").innerHTML="";
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
function check(){
	if(checkemail()&&checktel()&&checksex()&&checkname()){
		return true;
		}else{
			return false;
			}
}

</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body onload="test()">
<div id="body">
	
     <div id="container">
        <div class="content_mid">
        	<dl class="c_section c_section_mid">
                <dt>
                    <h2><em></em>完善个人信息</h2>
                </dt>
                <dd>
	                <form id="stepForm" action="UserServlet?flag=completeuserInfo" method="post" enctype="multipart/form-data">
	                	<div class="c_text_1">基本信息为必填项</div>
	                	<input type="hidden" id="myid" name="myname" value="${sessionScope.user.user_id}"></input>
	                    <h3>姓名： <input  readonly="readonly"  type="text" id="myid1" name="myname1" value="${sessionScope.user.user_name }" onblur="checkname()" onclick="cleanname()"></input><lable id="mylable3"></lable></h3>
	                    
	                    <h3>密码：<input   readonly="readonly" type="password"  id="myid2" name="myname2" value="${sessionScope.user.user_password}"> </input></h3> 
	                    
	                    <h3>性别：<input type="text" placeholder="请输入性别：男或女" name="sex"  value="${sessionScope.user.user_sex}" id="sex" onblur="checksex()" onclick="cleansex()"><lable id="mylable"></lable></h3>
	                    
	                    <h3>出生日期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年<select  name="myyear"    id="myyear" onchange="year(this.value)"  style="color: rgb(153,153,153);height: 30px;width: 100px"></select>&nbsp;&nbsp;月 <select name="mymonth"   id="mymonth" onchange="month(this.value)" style="color: rgb(153,153,153);height: 30px;width: 100px"></select>&nbsp;&nbsp;日<select name="myday"    id="myday" style="color: rgb(153,153,153);height: 30px;width: 100px"></select></h3>
	                    
	                    <h3>家庭住址：<input placeholder="如  江西省南昌市（镇/乡）" type="text" value="${sessionScope.user.user_address}" id="myid3" name="myname3" ></h3>
	                    
	                    <h3>用户邮箱：<input placeholder="如  ****@sina.com" type="text" value="${sessionScope.user.user_email}" id="myid4" name="myname4" onblur="checkemail()" onclick="cleanemail()" ><lable id="mylable1"></lable></h3>
	                    
	                    <h3>联系电话：<input placeholder="如  18720073144" type="text" value="${sessionScope.user.user_phone}" id="myid5" name="myname5" onblur="checktel()" onclick="cleantel()"><lable id="mylable2"></lable></h3>
	                    
	                    <h3>头像:</h3> 
	                   	<div class="c_logo c_logo_pos" >
	                    	 
						 <input type="file" id="myfile" name="filename" ></input>
						 <img src="Upload${sessionScope.user.user_img}" id="myimg"></img>
	                    </div>

	                    <h3>所在公司：<input type="text" placeholder=""  name="temptation" id="temptation" value="${sessionScope.user.user_company}"></input></h3> 
	                    	
	                    <input type="submit" value="提交" id="stepBtn" onclick="return check()"   class="btn_big fr">
	                </form>
                </dd>
            </dl>
       	</div>
       	</div>
       	
       	</div>
       	</body>
       	</html>
   
