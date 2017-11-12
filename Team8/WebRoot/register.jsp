<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/all.css"/>
    <script src="js/jquery.js"></script>
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function checkName1(op) {
     
		$.post("CheckServlet?flag=checkname", {
			uname : op
		}, function(data) {
			if (data == 1) {
				alert("该用户名已经存在，不能注册");
				return false;
			} else {
			    return true;
			}
		});
	}
</script>

  </head>
  
  <body style="background-image:url(img/4.jpg);background-repeat:no-repeat;background-size:cover;">
     
  <div class="container">
    	
    	<div class="register" style="position:fixed;left:250px;top:150px;">
    		<!--用户名-->
    		<form action="RegisterServlet" method="post" enctype="multipart/form-data">
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="userName">用&nbsp;户&nbsp;名</label>

    				<input type="text" id="userName" name="username" pattern="^[a-zA-Z]{2,8}$" onblur="checkName1(this.value)" placeholder="2位字母以上" style="width:300px;height:50px;background-color:transparent;font-size:20px;"required oninvalid="setCustomValidity('用户名不能为空！');"oninput="setCustomValidity('');"/>

    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span id="check"></span>
    			</div>
    			
    		</div>
    		<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="pwd">设 置 密 码</label>


    				<input type="password" id="pwd" name="userpwd"  placeholder="请输入密码" style="width:300px;height:50px;background-color:transparent;font-size:20px;required oninvalid="setCustomValidity('用户名不能为空！');"oninput="setCustomValidity('');"/>


    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="pwd">上 传 头 像</label>
    				<input id="file" name="userimg" type="file" accept="image/png,image/gif,image/jpeg,image/jp2" />
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--注册-->
    		<button id="btn" type="submit">注册</button>
    		</form>
    	</div>
    	
    </div>

  
  </body>
 	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.idealforms.js"></script>
  
</html>
