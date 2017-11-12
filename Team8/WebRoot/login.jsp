<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en" class="no-js">
<head>
<link rel="shortcut icon" href="images/favicon.png" type="image/png" />
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pilipala | 登录</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body style="overflow-y: hidden;">
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box" style="position:fixed;top:350px;left:1250px;">
					<form action="LoginServlet?flag=login" name="f" method="post">
						<div class="input_outer">
							<span class="u_user"></span> <input name="username" class="text"
								style="color: #000000 !important;font-size:15px;" type="text"  id="username"
								placeholder="请输入账户" required oninvalid="setCustomValidity('用户名不能为空！');"oninput="setCustomValidity('');">
						</div>
						<div class="input_outer">
							<span class="u_user"></span> <input name="userpwd" class="text" id="userpwd"
								style="color: #000000 !important; position:absolute; z-index:100;font-size:15px;"
								value="" type="password" placeholder="请输入密码" required oninvalid="setCustomValidity('密码不能为空！');"oninput="setCustomValidity('');">
						</div>
						<div class="mb2" style="position:absolute;left:80px;">
							<input type="submit" value="登录" class="a_demo_one">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="注册" class="a_demo_one" onclick="window.location.href='register.jsp'" > 
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
<style>
.a_demo_one {
	background-color:transparent;
	padding:10px;
	position:relative;
	font-family: 'Open Sans', sans-serif;
	font-size:12px;
	text-decoration:none;
	color:#000;
	border: solid 1px #831212;
	background-image: linear-gradient(bottom, rgb(171,27,27) 0%, rgb(112,51,51) 50%);
	border-radius: 5px;
}

.a_demo_one:active {
	padding-bottom:9px;
	padding-left:10px;
	padding-right:10px;
	padding-top:11px;
	top:1px;
	background-image: linear-gradient(bottom, rgb(171,27,27) 100%, rgb(212,51,51) 0%);
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
    color: #000; opacity:1; 
}

::-moz-placeholder { /* Mozilla Firefox 19+ */
    color: #000;opacity:1;
}

input:-ms-input-placeholder{
    color: #000;opacity:1;
}

input::-webkit-input-placeholder{
    color: #000;opacity:1;
}

</style>
</body>
</html>
