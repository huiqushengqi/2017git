<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>
       三个粉刷匠_基本信息
    </title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
    <link rel="stylesheet" href="css/home-min.css?v=0.7.6.12251362-2017011301"/>
    <link rel="stylesheet" href="css/common.css?v=0.7.6.12251362-2017011301"/>
    <link rel="stylesheet" href="css/userstyle.css?v=0.7.6.12251362-2017011301"/>
    	<script type="text/javascript" src="js/loginjs/jquery2.2.2.min.js"></script>
    
    <script type="text/javascript">
        var AM_Config = {
            baseUrl: "//js2.citysbs.com/0.8.5.40/forum",
            baseVersion:"?v=0.7.6.12251362-2017011301",
			test_temp:"2"
        };
        var pageLoadStartTime = parseInt((new Date()).getTime());
        var channel='jiaju';
    </script>
    <script type="text/javascript" src="//js2.citysbs.com/0.8.5.40/forum/AM.js?v=0.7.6.12251362-2017011301"></script>
		<link rel="stylesheet" type="text/css"  href="//img2.citysbs.com/css/0.8.5.40/app/home/home-style.css?v=0.7.6.12251362-2017011301"/>
<style>
img{width:219px;height:200px;}
#warp{width:219px;}
.upload{position: relative; margin-left:140px}  
.upload input{opacity: 0;position: absolute;top: 0;left: 10px;height: 20px;width: 100px;}  
.upload .upload_box{width: 100px;height: 20px;background-color: #0088cc;color: white;}  
.img_list .img-div{width: 219px;height: 220px; float: left;  overflow: hidden;text-align: center;  }  
 .img-div p{color: #28a4b0;margin: 0;} 
    </style>
  

	</head>
	<body>

	<div id="wrap" class="clearall">
	    <div id="head-wrap">
            <!--=S 用户模块 -->
            <div class="user-mod">
                <div class="user-hd">
                    <a class="user-pic"  ttname="re_myzone_infoavatar"><img id="smallCurrent"  style="background:#808080;" alt="${sessionScope.user.user_name}" src="image/${sessionScope.user.user_img}"/></a>
                </div>
                <div class="user-bd">
                    <h1><a  ttname="re_myzone_infoid">${sessionScope.user.user_name}</a>的家</h1>
                            <span class="readLevel fl"><i class="icon"></i>认证市民</span>
                    
                    <ul class="user-details">
                        <li><a href="//home.19lou.com/u/myinfo/thread?uid=46344066&page=1">帖子：<em id="user_threads">0</em></a></li>
                        <li class="gold"><i class="pipe">|</i><a href="//home.19lou.com/u/bank/detail?uid=46344066"><i class="icon iblock"></i>金币：<em class="color3" id="user_gold">0</em></a></li>
                        <li class="prestige"><i class="pipe">|</i><a href="//home.19lou.com/user/privilege/myprivilege?uid=46344066"><i class="icon iblock"></i>威望：<em class="color3" id="user_prestige">0</em></a></li>
                        <li class="user-status">（V4级：舒适小套）</li>
                    </ul>

                    <!--编辑器广告，手编-->
                </div>
            </div>
		   
            
            <!--=E 用户模块 -->

	    </div>
<div id="cont-wrap">
<div id="main-wrap">
<div class="tab-mod">
     <div class="select-title">
         <h3>账户设置</h3>
     </div>
    <div class="tab-hd clearall">
      <p class="tab-item">
      	<a id="s"><span class="iblock">基本信息</span></a>
      	 	<a id="s1"><span class="changeimg">设置头像</span></a>
          <a id="s2"ttname="home_username" href="javascript:;"><span class="changename">修改用户名</span></a>
      	 <a id="s3"><span class="changepwd">修改密码</span></a>
    </p>
  </div>
</div>

<form id="gochange"action="changeuser.action" method="post" enctype="multipart/form-data">
<div class="mainpage">
<table class="form-mod b-info">
<tbody>
<tr class="email">
    <th>E-mail:</th><td>
        <input class="txt" type="text" name="email" id="email" disabled="disabled" value="${sessionScope.user.user_email}" />
    <a class="changeemail">修改</a>
</td>

</tr>
<tr class="phone">
    <th>手机号码:</th><td>
        <input type="text" id="mobile" name="mobile" class="txt" value="${sessionScope.user.user_tel}" disabled="disabled">
        <span class="color9">已绑定</span>&nbsp;
        <a class="mobile_binding" mobileinput="mobile" source="4" ismodify="1" ttname="home_button_xgsj">修改手机</a>
    </td>
</tr>
<tr class="gender">
    <th>性别:</th><td>
    <label><input id="sex1" type="radio" name="gender" value ="female" >女</label>
    <label><input id="sex2" type="radio" name="gender" value ="male" >男</label>
    <label><input id="sex3" type="radio" name="gender" value ="unknow" >保密</label>
    <span class="color3 user_complete f12">完善性别 获得10威望</span>
</td>
</tr>
<tr class="city">
    <th>现居地:</th><td class="city-addr"><div class="city-addr-list">
    <input type="text" class="other inp_txt" id="village" name="village" disabled="disabled" placeholder="居住地或小区" value="${sessionScope.user.user_addr}" onblur="setCompleteLevel();">
    <a class="changeaddr">修改</a>
    </div>
    <span class="color3 user_complete f12">完善现居地 获得5威望</span>
</td>
<td><input type="submit" value="确定"class="btn" style="margin:20px 220px"/></td>
</tr>
</tr>
<tr class="tr-btn">
    <td colspan="2">我的新鲜主题：</td>
</tr>
</tbody>
</table>
<div class="mlcontent">
<c:forEach items="${sessionScope.mypost}" var="mywrite">
 <div class="dash"></div>
 <div class="mrcontent" style="line-height:150%;">
 <a href="#" style="text-decoration:none">${mywrite.essay_title}</a>&nbsp;&nbsp;
		<a href="#" style="text-decoration:none">[进入说吧]</a>
	  </div>
	<div class="dash"></div>
</c:forEach>
	 
  	  
	  	</div>
 
</div>

<!-- 修改用户名 -->
<div class="editname" style="display: none;">
                    <a style="float:right;color:#999;font-size:13px;">&nbsp;</a>
                    <table class="form-mod form-mod-noborder">
                        <tbody>
                        <tr><th>手机号:</th><td><input id="phoneNum" name="mobile"class="txt" placeholder="输入11位手机号码" type="text" value="${sessionScope.user.user_tel}" disabled="true">
<input type="button" class="option-btn" id="phone-btn" onclick="getcode()" value="点我获取验证码">                        <span class="mobile_tip c_gray"></span></td></tr>
                        <tr><th>验证码:</th><td>
                        <input id="valphone" name="code" class="txt normal" type="text">

                        <span class="tip">&nbsp;</span>

                        <span class="info line">请输入手机收到的短信验证码。</span></td></tr>
                        <tr><th>新用户名:</th><td><input class="txt" type="text" id="newUserName" name="newname"><span class="pass-tip pass-true" style="display:none">填写正确</span><span class="pass-tip pass-false" style="display:none">只支持汉字、数字、字母和下划线！</span></td></tr>
                        </tbody>
                    </table>
                    
     <div><input id="surename"type="submit" value="确定"class="btn" style="margin-left:100px"></input></div>
 </div>

<!-- 修改密码 -->
<div class="editpwd" style="display: none;">
<table class="form-mod form-mod-noborder">
						<tbody>
                        <tr><th>手机号:</th><td><input id="phoneNum" class="txt" placeholder="输入11位手机号码" type="text" value="${sessionScope.user.user_tel}" disabled="true" ><span class="mobile_tip c_gray"></span></td></tr>
                        <tr><th>验证码:</th><td><input id="codeNum" class="txt" placeholder="输入验证码" type="text" maxlength="6">
                        <a href="javascript:getcode();" class="confirm-btn" id="codeButton"><span style="background-color: #a0b537;">获取验证码</span></a><span class="phone_tip"></span></td></tr>
                        <tr><th>当前密码:</th><td><input class="txt" type="password" id="oldpassword"><span class="tip">&nbsp;</span></td></tr>
						<tr><th>新密码:</th><td><input name="mypwd"class="txt" type="password" id="newpassword"><span id="p1"class="pass-tip pass-true" style="display:none">填写正确</span><span id="t1" class="pass-tip pass-false" style="display:none">密码至少8位，包含数字、字母、符号</span></td></tr>
						<tr style="display:none"><th>&nbsp;</th>
							<td id="pwd_strength">
							<div id="strength-1" style="display:none"><p><em>&nbsp;</em></p><span>弱，账号容易被盗！</span></div>
							<div id="strength-2" style="display:none"><p><em>&nbsp;</em></p><span>中，账号比较安全！</span></div>
							<div id="strength-3" style="display:none"><p><em>&nbsp;</em></p><span>强，账号非常安全！</span></div>
						</td></tr>
						<tr><th>确认密码:</th><td><input class="txt" type="password" id="newpassword2"><span id="p2" class="pass-tip pass-true" style="display:none">填写正确</span><span id="t2" class="pass-tip pass-false" style="display:none">密码至少8位，包含数字、字母、符号</span></td></tr>
						<tr><th></th><td><a href="javascript:;" class="confirm-btn" id="submitButton"><span>确认</span></a></td></tr>
						</tbody>
	</table>
	 <div><input type="submit"onclick="gouser()" id="surepwd"value="确定"class="btn" style="margin-left:220px"disabled=false></input></div>
</div>



<!-- 修改头像 -->
<div class="editimg" style="display:none;">
<div ><a style="margin-left: 215px;font-size:20px;">当前头像</a></div>
<div class="img_list" style="margin-left:140px; border:solid #2f96b4;width: 219px;height: 200px;">
                    <img alt="" src="image/${sessionScope.user.user_img}">  
                    </div>
    <div class="upload">   
                       <input name="upfile"class="file_input" type="file"  id="avc">  
                        <div class="upload_box"> 更换照片  </div>  
     </div>
      <div><input type="submit" value="确定"class="btn" style="margin-left:220px"></input></div>  
</div>
 </form>
</div>
</div>



<script>

   


     //showTip
		var showTip = function(tipId,tipMsg,tipClass){
			obj = $(tipId).next();
			obj.html(tipMsg).show();
			tipClass ? obj.addClass(tipClass) : obj.removeClass("true");

		}

		//showInfo
		var showInfo = function(infoId){
			obj = infoId.parent().parent();
			obj.toggleClass("select").siblings().removeClass("select");
		}


		//tip message
		$(".register-form .txt").focus(function(){
			$(this).next().hide();
			$(this).parent().parent().addClass("select").siblings().removeClass("select");
		})
		
    var file_input=document.getElementsByClassName("file_input")[0];  
//    触发事件用的是change  
    file_input.addEventListener("change",function(){  
        var obj=this;  
        var obj_name=this.files[0].name;
         var img_length=obj.files.length;  
          for(var i=0;i<img_length;i++)  
        {          
            if(!(/image\/\w+/).test(obj.files[i].type))  
            {  
                alert("上传的图片格式错误，请上传图片");  
                return false;  
            }  
            var reader = new FileReader();  
            reader.error=function(e){  
                alert("读取异常");  
            }; 
            reader.onload = function(e){  
             var img_html='<img src="'+e.target.result+'"/>';
//                div_html是包括图片和图片名称的容器                                       
                if(document.getElementsByClassName("img_list")[0].children.length<100)  
                {  
                 document.getElementsByClassName("img_list")[0].innerHTML=img_html;  
                }else{  
                    alert("最多上传5张图片")  
                }  
            };  
            reader.onloadstart=function(){  
                console.log("开始读取"+obj_name);  
            } ;
            reader.onprogress=function(e){  
                if(e.lengthComputable){  
                    console.log("正在读取文件")  
                }  
            };  
            reader.readAsDataURL(obj.files[i]);  
      }
    })     
    </script>

 <script type="text/javascript">
 jQuery(document).ready(function($) {
  $('.iblock').click(function(){
        document.getElementById("s").className="selected";
      document.getElementById("s1").className="";
	document.getElementById("s2").className="";
	document.getElementById("s3").className="";
		$('.editname').fadeOut(100);
		$('.mainpage').fadeIn(100);
		$('.editpwd').fadeOut(100);
		$('.editimg').fadeOut(100);
	})
	
 $('.changename').click(function(){
        document.getElementById("s2").className="selected";
        	document.getElementById("s").className="";
	document.getElementById("s1").className="";
	document.getElementById("s3").className="";
		$('.editname').fadeIn(100);
		$('.mainpage').fadeOut(100);
		$('.editpwd').fadeOut(100);
		$('.editimg').fadeOut(100);
	})
	
$('.changepwd').click(function(){
      document.getElementById("s3").className="selected";
      document.getElementById("s").className="";
	document.getElementById("s2").className="";
	document.getElementById("s1").className="";
        $('.editname').fadeOut(100);
		$('.editpwd').fadeIn(100);
		$('.mainpage').fadeOut(100);
		$('.editimg').fadeOut(100);
	})
	
	$('.changeimg').click(function(){
	document.getElementById("s1").className="selected";
	document.getElementById("s").className="";
	document.getElementById("s2").className="";
	document.getElementById("s3").className="";
        $('.editname').fadeOut(100);
        $('.editpwd').fadeOut(100);
		$('.editimg').fadeIn(100);
		$('.mainpage').fadeOut(100);
	})
	
	$('.mobile_binding').click(function(){	
        $("#mobile").attr("disabled", false);
	})
	
	$('.changeaddr').click(function(){	
        $("#village").attr("disabled", false);
	})
	$('.changeemail').click(function(){	
        $("#email").attr("disabled", false);
	})
	/*var myemail='${sessionScope.user.user_email}'
	if(myemail==''){
	$("#email").css("display", "block");
	$("#email").attr("disabled", false);
	}else{
	$("#email").css("display", "block");
	$("#email").attr("disabled", true);
	}*/
	
	var myaddr='${sessionScope.user.user_addr}'
	if(myaddr==null){
	$("#village").attr("disabled", false);
	}
	var usersex='${sessionScope.user.user_sex}';
	if(usersex=="女"){
	 $("#sex1").attr("checked",true);
	}else if(usersex=="男"){
     $("#sex2").attr("checked",true);
	}else if(usersex==null){
	$("#sex3").attr("checked",true);
	}else if(usersex==""){
	$("#sex3").attr("checked",true);
	}
 });
 

    var mygetcode;
     function getcode(){
     var mobile=document.getElementById("mobile").value;
     $.ajax({
                    type: "POST",
                    url: "sendcode.action",
                    dataType: 'json',
                    async: false,
                    data: {"mobile": mobile},
                    success: function (res) {
                        if (res!=null) {
                        mygetcode=res;                     
                        } 
                    }
                });
} 

      
   $("#valphone").blur(function(){
   			var vcode =document.getElementById("valphone").value;
   			var isCodeAble = null; 
			if(vcode.length == 6){
				if(vcode=mygetcode){
				  $("#surename").attr("disabled", false);
				  showTip("#valphone", "填写正确！", "true");
				  $('.info').hide();
                  $("#valphone").parent().parent().removeClass("select");
                  isCodeAble = true;
                  return true;                   
				}
				else if(vcode!=mygetcode){
				showTip("#valphone","验证码错误，请重新输入！");
				 $('.info').hide();
                isCodeAble = false;
                 $("#surename").attr("disabled", true);
				}
			}else{
                showTip("#valphone","验证码错误，请重新输入！");
                 $('.info').hide();
                isCodeAble = false;
                 $("#surename").attr("disabled", true);
            }
		});
		
		$("#codeNum").blur(function(){
   			var vcode =document.getElementById("codeNum").value;
   			var isCode = null; 
			if(vcode.length == 6){
				if(vcode==mygetcode){
				  $("#surepwd").attr("disabled", false);
				  showTip("#codeNum", "填写正确！", "true");
				  $('.info').hide();
                  $("#codeNum").parent().parent().removeClass("select");
                  isCode = true;
                  return true;                   
				}
				else if(vcode!==mygetcode){
				showTip("#codeNum","验证码错误，请重新输入！");
				 $('.info').hide();
                isCode = false;
                 $("#surepwd").attr("disabled", true);
				}
			}else{
                showTip("#codeNum","验证码错误，请重新输入！");
                 $('.info').hide();
                isCodeAble = false;
                 $("#surepwd").attr("disabled", true);
            }
		});
		$("#oldpassword").blur(function(){
		var oldpwd1 =document.getElementById("oldpassword").value;
		var oldpwd2='${sessionScope.user.user_pwd}';
		if(oldpwd1!=oldpwd2){
		 showTip("#oldpassword","密码错误，请重新输入！");
		 $("#surepwd").attr("disabled", true);
		}else{
		$("#surepwd").attr("disabled", false);
		}
		})
		
		/*$("#surepwd").click(function(){
		
		if(old)
		})*/
		
  $("#newpassword").focus(function(){
    $("#p1").hide();
    $("#t1").show();  
	});
		
 $("#newpassword").blur(function(){
  var password=document.getElementById("newpassword").value;
  if(password.length<4){
    showTip("#newpassword","密码太短！");
     $("#t1").show();  
   }else if(!password.match(/^[\u4E00-\u9FA5a-zA-Z0-9_.%$&*@#]{3,20}$/)){
   showTip("#newpassword","密码只能包含数字、字母、符号，请修改！");
   }else{
    showTip("#newpassword","填写正确");
    $("#t1").hide();  
   }
	});
	
	$("#newpassword2").blur(function(){
  var pwd1=document.getElementById("newpassword").value;
  var pwd2=document.getElementById("newpassword2").value;
 if(pwd1==""||pwd2==""){
    $("#surepwd").attr("disabled", true);
    $("#p2").show(); 
    showTip("#newpassword2","密码不能为空！");
   }else if(pwd1!=pwd2){
    showTip("#newpassword2","两次密码不一致！");
    $("#surepwd").attr("disabled", true); 
   }else if(!pwd1.match(/^[\u4E00-\u9FA5a-zA-Z0-9_.%$&*@#]{3,20}$/)){
   showTip("#newpassword2","密码只能包含数字、字母、符号，请修改！");
   $("#surepwd").attr("disabled", true); 
   }else{  
    $("#surepwd").attr("disabled", false); 
   }
	});
	
if(!isCodeAble){
$("#surename").attr("disabled", true);
}else{
$("#surename").attr("disabled", false);
}

if(!isCode){
$("#surepwd").attr("disabled", true);
}else{
$("#surepwd").attr("disabled", false);
}
 </script>

  </body>
</html>
