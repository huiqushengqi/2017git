<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>Fullscreen Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
        <link rel="stylesheet" href="css/stylee.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body oncontextmenu="return false">

        <div class="page-container">
            <h1>找回密码</h1>
            
            
            
            <form action="" method="post">
				<div>
					<input type="text" name="name" class="username"  placeholder="用户名" autocomplete="off"/>
				</div>
				<div>
					<input type="text" name="tel" class="tel" placeholder="手机号" autocomplete="off"/>
				</div>
				<div>
					<input type="text" name="email" id="email" class="email" placeholder="邮箱" autocomplete="off"/>
				</div>
                <button id="submit" >找回密码</button>
                
                 
               
               
            
             
            </form>
              <a  href="login.jsp"> <button type="button">登入</button></a><br>
           <a  href="register.jsp"> <button type="button">注册</button></a>
           
            <div class="connect">
           
                <p>If we can only encounter each other rather than stay with each other,then I wish we had never encountered.</p>
				<p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
            </div>
        </div>
        
		<div class="alert" style="display:none">
			<h2>消息</h2>
			<div class="alert_con">
				<p id="ts"></p>
				<p style="line-height:70px"><a class="btn">确定</a></p>
			</div>
		</div>

        <!-- Javascript -->
		<script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
		<script>
		$(".btn").click(function(){
			is_hide();
		})
		var u = $("input[name=name]");
		var e = $("input[name=email]");
		var t = $("input[name=tel]");
		
		$("#submit").live('click',function(){
			if(u.val() == '' || e.val() ==''|| t.val() =='' )
			{
				$("#ts").html("用户名不能为空~");
				is_show();
				return false;
			}
			
			//手机号码
			if(!t.val() == ''){
			
			var reg = /^1\d{10}$/;
				if(!reg.exec(t.val()))
				{
				//匹配中文，英文字母和数字及_: 
					$("#ts").html("手机号码错误");
					is_show();
					return false;
				}
			
			
			}
			//邮箱验证
			
			if(!e.val() == ''){
			
			var reg =  /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
				if(!reg.exec(e.val()))
				{
				//匹配中文，英文字母和数字及_: 
					$("#ts").html("邮箱号码有误");
					is_show();
					return false;
				}
			
			
			}
			
			
			if(u.val() != '' || e.val() !=''|| t.val() !=''){
				
					$("#ts").html("您的密码是：111");
					is_show();
					return false;
				
			}
		});
		window.onload = function()
		{
			$(".connect p").eq(0).animate({"left":"0%"}, 600);
			$(".connect p").eq(1).animate({"left":"0%"}, 400);
		}
		function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
		function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
		
		
		
		
		
		</script>
    </body>

</html>

