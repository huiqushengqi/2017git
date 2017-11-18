<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,java.sql.*" errorPage="" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>手机找回密码</title>

<meta name="description" content="" />
<link rel="stylesheet" href="css/common.css?v=0.7.6.12251362-2017011301">
<link rel="stylesheet" href="css/findpwd.css">
 <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>
<body>
<div class="register-mod link0">

        <div class="register-hd change-pwd">

            <!--=S 注册步骤-->
                 <h3 class="select" style="text-align:center;width:100%"><a href="javascript:;" class="phone"><span>&nbsp;</span>手机找回密码</a></h3>
            <!--=E 注册步骤 -->
        </div>
        <div class="register-bd">
            <!--=S 注册信息 表单-->
            <form id="registerForm" name="registerForm" action="//home.19lou.com/util/lostpass/getmobilepwd" method="post">
            <div id="findpwd"class="register-form register-activation-form change-pwd-from">
				<dl class="register-activation-hd">
					<dd class="color6">若你的账号绑定了手机，可以通过手机找回密码。</dd>
				</dl>
				<dl class="input-dl" id="regphone">
                    <dt>*<em>手机号码</em></dt>
                    <dd>
                        <input id="mobile" name="mobile" class="txt normal" type="text">
						<span class="tip">&nbsp;</span>
                        <span class="info line">请输入以“1”开头的11位手机号码。</span>
                        <input type="button" class="option-btn" id="phone-btn" onclick="getcode()"value="点我获取验证码"/>
                       <!-- <a href="javascript:;" class="option-btn" id="phone-btn" href="javascripe:getcode()"><span>点我获取验证码</span></a>
                        --> 
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="time_tip link0"></span>
                    </dd>

                </dl>
				<dl id="maxphone">
					<dt>&nbsp;</dt>
					<dd>&nbsp;</dd>
				</dl>

                <dl class="input-dl">

                    <dt>*<em>手机验证码</em></dt>

                    <dd>

                        <input id="valphone" name="code" class="txt normal" type="text">

                        <span class="tip">&nbsp;</span>

                        <span class="info line">请输入手机收到的短信验证码。</span>

                    </dd>

                </dl>

                <dl>
                    <dt>&nbsp;</dt>
		    <dd>                
                   <input type="button"id="registerButton" name="registerButton" class="register-btn"  onclick="gochange()" value="找回密码"  />
                    </dd>

                </dl>

            </div>
    <div id="changepwd" class="register-form register-activation-form change-pwd-from" style="display:none;">
			
				 <dl class="input-dl">

                    <dt>*<em>用户名</em></dt>

                    <dd>
                       <a id="myname"></a>
                    </dd>

                </dl>
                
				<dl class="input-dl" id="setnewpwd">

                    <dt>*<em>设置新密码</em></dt>
                    <dd>

                        <input id="newpwd" name="pwd" class="txt normal" type="text">
						<span class="tip">&nbsp;</span>
                        <span class="info line">密码至少4位，包含数字，字母或字符</span>
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="time_tip link0"></span>
                    </dd>

                </dl>
				<dl id="maxphone">
					<dt>&nbsp;</dt>
					<dd>&nbsp;</dd>
				</dl>
               <dl class="input-dl">

                    <dt>*<em>确认新密码</em></dt>

                    <dd>

                        <input id="surepwd" name="code" class="txt normal" type="text">

                        <span class="tip">&nbsp;</span>

                        <span class="info line">请再次输入密码</span>

                    </dd>

                </dl>

                <dl>

                    <dt>&nbsp;</dt>

		    <dd>
                        <a id="changepwd" name="changeButton" class="register-btn" href="javascript:goindex()" ><span>修改密码</span></a>

                    </dd>

                </dl>

            </div>
            </form>

            <!--=E 注册信息 表单 -->
			<div class="register-bd-bottom">
				<p class="color6">若忘记绑定的手机号码，则无法通过手机找回密码。你可以<a href="index.jsp">重新注册</a> </p>
			</div>
        </div>


    </div>

<script type="text/javascript">
 var isMobileAble = true;
 var isCodeAble = false;
    var mygetcode;
     function getcode(){
     var params=$("#registerForm").serializeArray();
     $.post(
      "sendcode.action",
      params,
       function(data){
     if(data!=null){
     mygetcode=data;
    }
}
);
} 

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

  $("#mobile").focus(function(){
			$(this).siblings("#phone-btn").hide();
			$(".time_tip").hide();
		});
  $("#mobile").blur(function() {
             var tipId = "#mobile",btn = $(this).siblings("#phone-btn");
             var mobile = $.trim($("#mobile").val()); 
             if (this.value != "") {
                 if (isNaN(this.value) || !this.value.match(/^1[0-9]{10}$/)) {
                     btn.hide().attr("class","option-btn");
                     showTip(tipId, "请确认手机号码是否正确。");
                     isMobileAble = false;
                     $("#registerButton").attr("disabled", true);
                 } else { 
                         $.ajax({
                    type: "POST",
                    url: "querynum.action",
                    dataType: 'json',
                    async: false,
                    data: {"mobile": mobile},
                    success: function (res) {
                        if (res!=null) { 
                         isMobileAble = true;
                          $("#registerButton").attr("disabled", false);
                         btn.show().attr("class","option-btn");
                         $("#maxphone").hide();
                         var str=res.user_name;
                         $("#myname").html(str);                                                                  
                        }else {
                          showTip(tipId, "该手机号码未被注册！");
                            isMobileAble = false;
                             $("#registerButton").attr("disabled", true); 
                        } 
                    }
                });
                } 
                $("#maxphone").hide();                               
              }
              else {
                 isMobileAble = true;
                 btn.show().attr("class","option-btn");
                 $("#maxphone").hide();
             }      
         });
   
   $("#valphone").blur(function(){
			var vcode = $(this).val();
			if(vcode.length == 6){
				if(vcode="111111"){
				  $("#registerButton").attr("disabled", false);
				  showTip("#valphone", "填写正确！", "true");
                  $("#valphone").parent().parent().removeClass("select");
                  isCodeAble = true;
                  return true;                   
				}
				else if(vcode!=mygetcode){
				showTip("#valphone","验证码错误，请重新输入！");
                isCodeAble = false;
                 $("#registerButton").attr("disabled", true);
				}
			}else{
                showTip("#valphone","验证码错误，请重新输入！");
                isCodeAble = false;
                 $("#registerButton").attr("disabled", true);
            }
		}); 

	
	 
	   
   $("#newpwd").blur(function(){
  var password=document.getElementById("newpwd").value;
  if(password.length<4){
    showTip("#newpwd","密码太短！");
   }else if(!password.match(/^[\u4E00-\u9FA5a-zA-Z0-9_.%$&*@#]{3,20}$/)){
   showTip("#newpwd","密码只能包含数字、字母、符号，请修改！");
   }
	}); 
	 
  function gochange(){
  var mobile1 =document.getElementById("mobile").value;
  var code1 =document.getElementById("valphone").value;
   if(isMobileAble&&isCodeAble) {
   $("#registerButton").attr("disabled", false);      
	   if(mobile1!=""&&code1!=""){
	    $("#changepwd").fadeIn(100);
		$("#findpwd").fadeOut(500);
	  }	     
     }
        else{
         $("#registerButton").attr("disabled", true);
	}
  
  }
	
  function goindex(){
  var pwd1=document.getElementById("newpwd").value;
  var pwd2=document.getElementById("surepwd").value;
  if(pwd1==""||pwd2==""){
    $("#changepwd").attr("disabled", true); 
    showTip("#surepwd","密码不能为空！");
   }else if(pwd1!=pwd2){
    showTip("#surepwd","两次密码不一致！");
    $("#changepwd").attr("disabled", true); 
   }else if(!pwd1.match(/^[\u4E00-\u9FA5a-zA-Z0-9_.%$&*@#]{3,20}$/)){
   showTip("#surepwd","密码只能包含数字、字母、符号，请修改！");
   $("#changepwd").attr("disabled", true); 
   }else{  
    $("#changepwd").attr("disabled", false); 
    window.location.href='index.jsp';
   }
  }
</script>
</body>
</html>
