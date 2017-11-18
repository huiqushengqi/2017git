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
			<div class="news">
				<div class="tab01">
					 <ul class="m_p clearfix">
						<li class="active"><a href="job.html">人才招聘</a></li>
						<li><a href="contact.html">联系我们</a></li>
					 </ul>
				</div>
				
				<div class="cont01">
					<div class="product_main">
						<dl>
							<dt>总监级设计师</dt>
							<dd>1、负责高端客户的室内设计、服务工作，达成业绩产值目标；</dd>
							<dd>2、与客户交流并准确领会相关设计要求和内容，并及时准备相关报告；装修设计功底深厚,能带领团队；</dd>
							<dd>3、28-40岁，环艺、建筑、室内设计本科以上学历，至少5年以上相关工作经验，有带团队经验者优先；</dd>
							<dd>4、较高的设计艺术气质和修养，较强的方案创意、方案讲解和客户说服能力，懂装饰预算。</dd>
						</dl>
						<dl>
							<dt>资深设计师</dt>
							<dd>1、负责中高端客户的室内设计、服务工作，达成业绩产值目标；</dd>
							<dd>2、与客户交流并准确领会相关设计要求和内容，并及时准备相关报告；</dd>
							<dd>3、28–40岁，环艺、建筑、室内设计大专，至少5以上相关工作经验；</dd>
							<dd>4、较高的设计艺术气质和修养，熟悉施工工艺和材料，各类装饰风格，并能时刻掌握国际国内前沿风格，能手工绘制方案及表现图，熟练掌握AUTOCAD,3DMAX等图像处理软件；</dd>
						</dl>
						<dl>
							<dt>市场部经理</dt>
							<dd>1、中层管理职位，分析竞争环境和市场策略，制定营销规划与年度计划，完成董事会制定</dd>
							<dd>2、的年度销售指标； 负责与销售有关的广告宣传计划、促销活动等的策划，执行及评估； </dd>
							<dd>3、负责销售团队的建立，管理和培训； 进行商业调查，提供竞争对手分析报告； </dd>
							<dd>4、28-45岁，大专以上学历，具有大型家装公司5年以上相关管理工作经验； </dd>
						</dl>
						<dl>
							<dt>项目经理</dt>
							<dd>1、严格按照公司施工顺序，施工工艺要求组织施工，做好分阶段验收记录工作，对各道工序严格把好质量关； 进行施工现场的管理、协调工作；与业主、客户、工队长等各方面进行沟通、保证工程按期完工； </dd>
							<dd>2、45岁以下，工民建专业大专以上学历，至少3年建筑装饰企业装饰项目经理工作经验，负责过别墅、豪宅或五星级酒店等类似的项目工程管理；</dd> 
							<dd>3、对装饰、给排水、电气、暖通等专业都有相当程度了解，熟知装饰预决算，能分析项目的成本并有效控制成本，能对整个项目包括设计、施工、甲方等各环节进行协调管理；</dd> 
						</dl>
						<dl>
							<dt>财务经理</dt>
							<dd>1、财务或相关专业本科以上学历，5年以上跨国企业、大型企业集团财务管理或者装饰行业同职位工作经验；具有全面的财务专业知识、账务处理及财务管理经验；</dd>
							<dd>2、精通国家财税法律规范，具备优秀的职业判断能力和丰富的财会项目分析处理经验；</dd>
							<dd>3、受过管理学、战略管理、管理能力开发、企业运营流程、财务管理等方面的培训。</dd>
						</dl>
						<dl>
							<dt>店经理助理</dt>
							<dd>1、负责协助店经理管理店面 规章制度的制定、监督、管理；</dd> 
							<dd>2、对来访客户进行资料登记，客户原始档案完整、有序的保存，以及后续的客户回访；客户信息及时更新；</dd> 
							<dd>3、配合店面经理受理客户投诉，详细记录，协调解决； </dd>
							<dd>4、22-28岁，大专及以上学历，相关专业毕业，2年以上工作经验，普通话标准；</dd> 
							<dd>5、具有良好的服务意识与工作心态，有优秀的沟通与表达能力。</dd>
						</dl>
						<dl>
							<dt>行政主管</dt>
							<dd>1、负责公司行政事务的统筹安排与检查； </dd>
							<dd>2、为公司所有业务部门提供必要的办公设施及其他后勤支持；</dd> 
							<dd>3、25-40岁，本科以上学历；2年以上行政主管工作经验；</dd>
							<dd>4、熟悉行政工作流程，办公用品采购流程，企业资产管理；</dd>
							<dd>5、较强的责任心和敬业精神，良好的组织协调能力及沟通能力，较强的分析、解决问题能力。</dd>
						</dl> 
						<div class="page">
							<a href="job.html">首页</a><a href="job.html">上页</a><a href="job_1.html">下页</a><a href="job_2.html">尾页</a>
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

