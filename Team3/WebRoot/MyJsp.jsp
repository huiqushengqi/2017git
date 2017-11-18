<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link type="text/css" href="style.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script>
function myquery(){
location.href="queryHomeTy.action";
}
</script>
  </head>
  
  <body>

  <div class="logo">
			<h1 class="area_l l_g">
				<a href="index.html"><img src="image/logo.png" /></a>
			</h1>
			<div class="area_l adv_font">
				<img src="images/adv_font.gif" />
			</div>
			
			<span class="telephone">欢迎您：<a href="mypost.action">${sessionScope.user.user_name} </a>全国咨询热线：<b>800 6666 8888</b>&nbsp;&nbsp;&nbsp;&nbsp;请<a class="a globalLoginBtn" >[登录]</a>或<a class="register" href="javascript:;">[注册]</a></span>
			
		</div><!--logo part for end-->

    <div class="meun">
			<ul class="clearfix">
				<li class="left_bg"></li>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="company.jsp">关于我们</a></li>
				<li><a href="activity.jsp">最新活动</a></li>
				<li><a href="myqueryAll.action?name=classic_case&typename=别墅&page=1" >经典案例</a></li>
				<li><a href="queryByAll.action?title1=设计总监&title2=总监级设计师&page=1">设计团队</a></li>
				<li><a href="myquote.action?name=material&typename=墙砖&page=1">精品材料</a></li>
				<li><a href="quote.jsp">装修预算</a></li>
				<li><a href="decoration.jsp">装饰贴士</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
				<li><a href="allEssay.action">发帖留言</a></li>
			    <li class="right_bg"></li>           
			 
			      
			</ul>
		</div><!--meun part for end-->
  </body>
</html>
