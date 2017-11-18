<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>三个粉刷匠装饰家居有限公司</title>
<link type="text/css" href="style.css" rel="stylesheet" />
<script src="js/slide.js" type="text/javascript"></script>
</head>

<body>
<!-- 在线客服 -->
<jsp:include page="qqOnline.jsp"></jsp:include>
	<div class="top">
		
		<jsp:include page="MyJsp.jsp"></jsp:include>
		
		<div class="banner">
			<img src="images/banner1.jpg" />
		</div><!--banner part for end-->
		
	</div><!--top part for end-->

<div class="blank10"></div>
	
	<div class="container clearfix">
		<div class="all_title">
			<h2>
				<span class="title">精品材料</span>
			</h2>
			<div class="blank10"></div>
			
			
			<div class="blank10"></div>
			
		<!--all_title part for end-->
		</div><!--left part for end-->
		<div class="material" style="float:left;">
			<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li><a href="myquote.action?name=material&typename=墙砖&page=1">墙&nbsp;&nbsp;&nbsp;&nbsp;砖</a></li>
						<li class="active"><a href="myquote.action?name=material_infor1&typename=地砖&page=1">地&nbsp;&nbsp;&nbsp;&nbsp;砖</a></li>
						<li><a href="myquote.action?name=material_infor2&typename=壁纸&page=1">壁&nbsp;&nbsp;&nbsp;&nbsp;纸</a></li>
						<li><a href="myquote.action?name=material_infor3&typename=涂料&page=1">涂&nbsp;&nbsp;&nbsp;&nbsp;料</a></li>
						<li><a href="myquote.action?name=material_infor4&typename=窗帘&page=1">窗&nbsp;&nbsp;&nbsp;&nbsp;帘</a></li>
					 </ul>
				</div>
				
				<div class="proudct">
				<ul class="clearfix">
				<c:forEach var="mat" items="${requestScope.mt.list }" begin="${(requestScope.page-1)*size}"  end="${ (requestScope.page)*size-1}"  varStatus="stus">
					<li>
						<dl>
							<dt>材料名称：${mat.mat_name}</dt>
							<dd>材料价格：${mat.mat_price }￥</dd>
							<dd>材料简介：${mat.mat_about }</dd>
						</dl>
						<p>
							<img src="${mat.mat_cover }" />
						</p>
					</li>
					</c:forEach>
					</ul>
				<div class="page">
							<pt:page pageIndex="${requestScope.page}" url="myquote.action?name=material_infor1&typename=地砖&" pageMax="${requestScope.countpage}"/>
						</div>
			   </div><!--infor for end-->

			
		</div><!--right part for end-->
	</div><!--container part for end-->
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
</body>
</html>
