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
	<div class="top">
		
		<jsp:include page="MyJsp.jsp"></jsp:include>
		
		<div class="banner" id="focusViwer">
			<div id="imgADPlayer"></div> 
				<script> 
					PImgPlayer.addItem( "", "#", "images/focus/focus1.jpg"); 		
					PImgPlayer.addItem( "", "#", "images/focus/focus2.jpg"); 		
					PImgPlayer.addItem( "", "#", "images/focus/focus3.jpg"); 		
					PImgPlayer.addItem( "", "#", "images/focus/focus4.jpg"); 			 		
					PImgPlayer.init( "imgADPlayer", 968, 377+0);   
				</script>
		</div><!--banner part for end-->
		
	</div><!--top part for end-->

<div class="blank10"></div>
	
	<div class="container clearfix">
		<div class="area_l c_l">
			<div class="all_title">
				<h2>
					<span class="title">最新活动</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Latest Activities</a>
				</h2>
				<p class="pic"><a href="activity.html"><img src="images/new.jpg" /></a></p>
				<p class="main">直击火爆学习现场，装友大聚会，体验不同装友的团购秘诀，共享团购乐趣。2000平豪华场所，精美自助餐布置，让每位装友在轻松愉悦的环境下了解国际......<a href="activity.html">>>详细</a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">最新方案</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Nvew programs</a>
				</h2>
				<p class="pic"><a href="case.html"><img src="images/case.jpg" /></a></p>
				<p class="main">尚海湾，方案为简欧风格，主要运用主材黑胡桃木、挪威红石材......<a href="case.html">>>详细</a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">在线咨询</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Online</a>
				</h2>
				<p class="pic"><a href="#"><img src="images/online_talk.gif" /></a></p>
				<p class="pic"><a href="online.html"><img src="images/online_dd.gif" /></a></p>
				<p class="pic"><a href="step.html"><img src="images/service_step.gif" /></a></p>
				<p class="pic"><a href="service.html"><img src="images/service_h.gif" /></a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">精艺良工</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Exceptional Craftsmanship</a>
				</h2>
				<p class="pic"><a href="good_work.html"><img src="images/linkhigh.jpg" /></a></p>
				<div class="blank10"></div>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">友情链接</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Links</a>
				</h2>
				<div class="link">
					<ul class="clearfix">
						<li><a href="#">美巢装饰</a><span class="arrow"></span></li>                    
						<li><a href="#">许小年博客</a><span class="arrow"></span></li>
						<li><a href="#">美欣装饰</a><span class="arrow"></span></li>                    
						<li><a href="#">冯琪雅博客</a><span class="arrow"></span></li>
						<li><a href="#">ItaMay设计事务所</a><span class="arrow"></span></li>           
						<li><a href="#">搜房工作室</a><span class="arrow"></span></li>
					</ul>	
				</div>
			</div><!--all_title part for end-->
		</div><!--left part for end-->
		<div class="area_r c_r">
			<div class="all_title">
				<h2>
					<span class="title">在线订单</span>
				</h2>
				<div class="form">
					<form action="" method="post">
						<table align="center" width="500px">
							<tr>
								<td colspan="2" align="center"><img src="images/form_title.jpg" /></td>
							</tr>
							<tr>
								<td colspan="2" height="15px"></td>
							</tr>
							<tr>
								<td width="170px" align="right">真实姓名：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">手机号码：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">城市：</td>
								<td>
									<select name="" id="" style="width:70px;">
										<option>上海</option>
										<option>苏州</option>
										<option>杭州</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align="right">楼盘\小区：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">房型：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">面积：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">预约设计师：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">预约设计师：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							
							<tr>
								<td align="right">风水需求：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">材料选配：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">设备需求：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right">装修预算：</td>
								<td><input type="text" name="" value=""  id="" class="text" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">其他信息：</td>
								<td>
									<textarea name="" id="" class="l_text"></textarea>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>感谢您的参与，我们客服会在24小时内与您联系
如有疑问可拨打我们咨询热线：400—668—6166</td>
							</tr>
							<tr>
								<td colspan="2" height="15px"></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="image" src="images/button.gif" name="" id="" value="" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div><!--all_title part for end-->
		</div><!--right part for end-->
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

