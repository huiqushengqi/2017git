<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>聆海装饰家居有限公司</title>
<link type="text/css" href="style.css" rel="stylesheet" />
<script src="js/slide.js" type="text/javascript"></script>
</head>

<body>

<!-- 在线客服 -->
<jsp:include page="qqOnline.jsp"></jsp:include>
	
		<jsp:include page="MyJsp.jsp"></jsp:include>
		
	</div><!--top part for end-->

<div class="blank10"></div>
	
	<div class="container clearfix">
	<div class="blank10"></div>
		<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li><a href="activity.html">最新活动</a></li>
						<li class="active"><a href="case.html">最新方案</a></li>
					 </ul>
				</div>
				
				<div class="cont01">
					<div class="product_main">
						<p>
							<a href="#"><img src="images/np1.jpg" /></a>
							<a href="#"><img src="images/np2.jpg" /></a>
							<a href="#"><img src="images/np3.jpg" /></a>
						</p>
						<p>
							<a href="#"><img src="images/np4.jpg" /></a>
							<a href="#"><img src="images/np5.jpg" /></a>
							<a href="#"><img src="images/np6.jpg" /></a>
						</p>
						<p>
							<img src="images/np_mian.jpg" />
						</p>
					</div><!--block 2 part for end-->
				</div><!--tab mian part for end-->
				
			</div>
	</div><!--container part for end-->
	
	<div class="foot">
		<div class="foot_line"></div>
		<div class="foot_main">
			<ul>
				<li>上海浦东旗舰店 Linkhigh Pudong Store</li>
				<li>地址：中国·上海浦东新区张杨路500号，华润时代广场11楼</li>
				<li>ADD:11/F，Huarun times square,500 Zhangyang RD,Pudong Shanghai 200122 P.R.C</li>
				<li>意大利·事务所 Italia Design Studio</li>
				<li>ADD:4,Via Enrico Fermi, Senigallia(AN)-Italy</li>
				<li>客户垂询热线：021-5836 8199   5836 8266</li>
				<li>上海公司总机：021-5836 7288</li>
				<li>版权所有 Copyright(c) 2010  聆海建筑装饰工程有限公司  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></li>
			</ul>
		</div>
	</div><!--foot part for end-->
	<script type="text/javascript">					
		 var qMenu0=new menuGlobal("tab01","cont01",2,0);
		 var qMenu0=new menuGlobal("tab02","cont02",2,0);
	</script>	
</body>
</html>
