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
<script>
function myonclik(){
  Location.href="querybyAjax.action";
   
}


function querybytype(mytype){
	 $.ajax({
         type: "POST",
         url: "querybyAjax",
         dataType: 'json',
         async: false,
         data: {"type": mytype},
         success: function (res) {
             if (res!=null) { 
                     str="<li><a ><img src='"+res.exp_cover+"' /></a>"	+
						"<span><a>"+res.name+"</a></span></li> "	

						                                  
						  
            $('.clearfix').html(str); 
             }
         }
     });
}

</script>
<style >
.myimg{width:133px;height:133px;}
</style>
</head>

<body>
<!-- 在线客服 -->
<jsp:include page="qqOnline.jsp"></jsp:include>
	<div class="top">
		
		<jsp:include page="MyJsp.jsp"></jsp:include>
		
		
		
	</div><!--top part for end-->

<div class="blank10"></div>
	
	<div class="container clearfix">
		<div class="area_l c_l">
			<div class="all_title">
				<h2>
					<span class="title">经典案例</span>
					<cite class="arrow"></cite>
					<a href="#" class="more">CLASSIC CASE</a>
				</h2>
				<p class="pic"><a href="activity.html"><img src="images/new.jpg" /></a></p>
				<p class="main">直击火爆学习现场，装友大聚会，体验不同装友的团购秘诀，共享团购乐趣。2000平豪华场所，精美自助餐布置，让每位装友在轻松愉悦的环境下了解国际......<a href="activity.html">>>详细</a></p>
			</div><!--all_title part for end-->
			
			<div class="blank10"></div>

			<div class="blank10"></div>
			
		<!--all_title part for end-->
		</div><!--left part for end-->
		<div class="area_r c_r">
			<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
					 <li class="active"><a href="querybytypename.action?typename=别墅&page=1">别&nbsp;&nbsp;&nbsp;&nbsp;墅</a></li>
						<li ><a href="querybytypename.action?typename=公装&page=1">公&nbsp;&nbsp;&nbsp;&nbsp;装</a></li>
						<li><a href="querybytypename.action?typename=复式&page=1">复&nbsp;&nbsp;&nbsp;&nbsp;式</a></li>
						<li><a href="querybytypename.action?typename=精品公寓&page=1">精品公寓</a></li>
					 </ul>
				
				</div>
				<!--  --> 
				<div class="cont01">
					<div class="product_main">
						<ul class="clearfix">
				<c:forEach var="list" items="${requestScope.list }" begin="${(requestScope.page-1)*size }" end="${requestScope.page*size-1 }">
				<li>
				<a href="myqueryAll.action?name=classic_case_main&typename=别墅&page=1"><img class="myimg" src="image/${list.exp_cover }" /></a>
								<span><a href="#">${list.exp_name }</a></span>
								</li>
				</c:forEach>
						</ul>
						<br />
						<div class="page">
							<pt:page pageIndex="${requestScope.page}" url="myqueryAll.action?name=classic_case&typename=别墅&" pageMax="${requestScope.countpage}"/>
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
				
			</ul>
		</div>
	</div><!--foot part for end-->
	<script type="text/javascript">					
		 var qMenu0=new menuGlobal("tab01","cont01",2,0);
		 var qMenu0=new menuGlobal("tab02","cont02",2,0);
	</script>	
</body>
</html>

