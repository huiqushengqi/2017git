<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>三个粉刷匠装饰家居有限公司</title>
<link type="text/css" href="style.css" rel="stylesheet" />
<script src="js/slide.js" type="text/javascript"></script>

</head>

<body>
	<jsp:include page="MyJsp.jsp"></jsp:include>


<div class="blank10"></div>
	
	<div class="container clearfix">
<div class="area_l c_l">
			<div class="all_title">
				<h2>
					<span class="title">最新活动</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Latest Activities</a>
				</h2>
				<p class="pic"><a href="activity.html"><img src="images/new.jpg"></a></p>
				<p class="main">直击火爆学习现场，装友大聚会，体验不同装友的团购秘诀，共享团购乐趣。2000平豪华场所，精美自助餐布置，让每位装友在轻松愉悦的环境下了解国际......<a href="activity.html">&gt;&gt;详细</a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">最新方案</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Nvew programs</a>
				</h2>
				<p class="pic"><a href="case.html"><img src="images/case.jpg"></a></p>
				<p class="main">尚海湾，方案为简欧风格，主要运用主材黑胡桃木、挪威红石材......<a href="case.html">&gt;&gt;详细</a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				<h2>
					<span class="title">在线咨询</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">Online</a>
				</h2>
				<p class="pic"><a href="online.html"><img src="images/online_dd.gif"></a></p>
				<p class="pic"><a href="step.html"><img src="images/service_step.gif"></a></p>
				<p class="pic"><a href="service.html"><img src="images/service_h.gif"></a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
			
			<div class="all_title">
				
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>
		
			
		</div>
		<div class="area_r c_r">
		
			<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li class="active">设计总监</li>
					 </ul>
				</div>
				<div class="cont01">
					<div class="product_main">
					
					  <c:forEach var="list" items="${requestScope.list}" varStatus="status">
					   <div class="myclass">
					     <div class="myclass1">
					     <p><img src="image/${list.der_img}" /></p> 
					     </div>
					      <div class="myclass2">
					               设计师名字：${list.der_name }
					    <br>设计师职称: ${list.der_title }
					     <br>设计师简介：${list.der_about }
					     <br>设计师作品 :${list.der_work }     
					     </div>
					    </div>
					  </c:forEach>
					   
						<!-- <div class="myclass">
						<div class="myclass1">
						<p><img src="images/t2.jpg" /></p>
					    </div>
					     <div class="myclass2">
					     sdfsdfsdfsfsdfsdf
					     </div>  
					    </div>
						<div class="myclass">
						<div class="myclass1">
						 <p><img src="images/t3.jpg" /></p>
					    </div>
					     <div class="myclass2">
					     sdfsdfsdfsfsdfsdf
					     </div>  
					    </div>
					     -->
					</div><!--block 2 part for end-->
				</div><!--tab mian part for end-->
				
			</div><!--tab part for end-->
			
			
			<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li class="active">总监级设计师</li>
					 </ul>
				</div>
				
				<div class="cont01">
					<div class="product_main">
					<c:forEach var="manager" items="${requestScope.list1}" varStatus="status">
					   <div class="myclass">
					     <div class="myclass1">
					     <p><img src="image/${manager.der_img}" /></p> 
					     </div>
					      <div class="myclass2">
					               设计师名字：${ manager.der_name}<br>
					              设计师职称: ${manager.der_title }<br>
					               设计师简介：${manager.der_about }<br>
					               设计师作品 :${manager.der_work }     
					     </div>
					    </div>
					  </c:forEach>
						<!--  <div class="myclass">
						<div class="myclass1">
						<p><img src="images/zt2.jpg" /></p>
					    </div>
					     <div class="myclass2">
					     sdfsdfsdfsfsdfsdf
					     </div>  
					    </div>
						<div class="myclass">
						<div class="myclass1">
						<p><img src="images/zt3.jpg" /></p>
					    </div>
					     <div class="myclass2">
					     sdfsdfsdfsfsdfsdf
					     </div>  
					    </div>
						-->
					</div><!--block 2 part for end-->
				</div><!--tab mian part for end-->
				
			</div><!--tab part for end-->
			
			
			
				<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li class="active">设计团队</li>
					 </ul>
				</div>
				
				<div class="cont01">
					<div class="product_main">
					
					   <div class="myclass3">
					   <c:forEach var="manager"  end="${size}" items="${requestScope.list2}" step="1">
					   <div class="myclass4">
					   <p><img src="image/${manager.mag_img }" /></p>
					   </div>
					    <div class="myclass5">
					          姓名：${manager.mag_name }<br>
					         职位：${manager.mag_job }<br>
					     简历： ${manager.mag_about }
					    </div>
					  </c:forEach>
					    <c:forEach var="manager"  begin="${size}" items="${requestScope.list2}" step="1">
					   <div class="myclass4">
					   <p><img src="images/st1.jpg" /></p>
					   </div>
					    <div class="myclass5">
					          姓名：${manager.mag_name }<br>
					         职位：${manager.mag_job }<br>
					     简历： ${manager.mag_about }
					    </div>
					  </c:forEach>
					   </div>
					   
				
						<!--   <div class="myclass">
						<div class="myclass1">
						<p><img src="images/st1.jpg" /></p>
					    </div>
					     <div class="myclass2">
					              是否是否胜多负少地方
					     </div>  
					    </div>-->
						
						
						<!-- <p><img src="images/st2.jpg" /></p>
						<p><img src="images/st3.jpg" /></p>
						<p><img src="images/st4.jpg" /></p>
						<p><img src="images/st5.jpg" /></p>
						<p><img src="images/st6.jpg" /></p>
						<p><img src="images/st7.jpg" /></p>
						<p><img src="images/st8.jpg" /></p>
						<p><img src="images/st9.jpg" /></p>
						<p><img src="images/st10.jpg" /></p>-->
						<div class="page">
							<pt:page pageIndex="${requestScope.page3}" url="queryByAll.action?title1=设计总监&title2=总监级设计师&" pageMax="${requestScope.num3}"/>
						</div>
					</div><!--block 2 part for end-->
				</div><!--tab mian part for end-->	
			</div><!--tab part for end-->
			
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
	<script type="text/javascript">					
		 var qMenu0=new menuGlobal("tab01","cont01",2,0);
		 var qMenu0=new menuGlobal("tab02","cont02",2,0);
	</script>	
</body>
</html>
