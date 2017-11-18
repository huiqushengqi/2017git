<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>『三个粉刷匠』后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
    <link rel="stylesheet" href="css/clndr.css" type="text/css" />
   <script src="js/jquery.min.js"></script>
   <link href="css/style.css" rel='stylesheet' type='text/css' />
        <link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/boot.css" rel='stylesheet' type='text/css' />
</head>
<body>
<!-- 公共页面，左侧和上侧导航栏 -->
<jsp:include page="AdminCom.jsp"></jsp:include>  
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎你，XXX。</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="insertexp.jsp"><i class="icon-font">&#xe001;</i>新增案例</a>
                    <a href="#"><i class="icon-font">&#xe005;</i>新增设计师</a>
                    <a href="addmat.jsp"><i class="icon-font">&#xe048;</i>新增饰材</a>
                    <a href="#"><i class="icon-font">&#xe041;</i>新增活动</a>        
                </div>
            </div>
        </div>  
        <!-- 消息块 -->
         
           <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
         
            <!-- /.navbar-header -->
        <!--     <ul class="nav navbar-nav navbar-right">
				<li class="dropdown open">
	        		<ul class="dropdown-menu" style="width: 800px;height:550px;">
						<li class="dropdown-menu-header text-center">
							<strong>提示信息</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> 新增用户 <span class="label label-info">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-usd"></i> 待处理订单<span class="label label-success">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-tasks"></i> 待审核新帖 <span class="label label-danger">42</span></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> 待处理评论 <span class="label label-warning">42</span></a></li>
												
						
	        		</ul>
	      </li>			   
			</ul>
			-->
           
            <!-- /.navbar-static-side -->
        </nav>
			        
    </div>
    <!-- 日历块 -->
    <div class="cal1 cal_2" style="width: 300px;height: 400px;position:absolute;top:174px;right:0;">
			<div class="clndr">
				<div class="clndr-controls">
					<div class="clndr-control-button">
						<p class="clndr-previous-button">previous</p>
					</div>
					<div class="month">July 2017</div>
					<div class="clndr-control-button rightalign">
						<p class="clndr-next-button">next</p>
					</div>
				</div>
				<table class="clndr-table" border="0" cellspacing="0" cellpadding="0">
					<thead>
						<tr class="header-days">
							<td class="header-day">S</td>
							<td class="header-day">M</td>
							<td class="header-day">T</td>
							<td class="header-day">W</td>
							<td class="header-day">T</td>
							<td class="header-day">F</td>
							<td class="header-day">S</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="day adjacent-month last-month calendar-day-2017-06-28">
								<div class="day-contents">28</div>
							</td>
							<td class="day adjacent-month last-month calendar-day-2017-06-29">
								<div class="day-contents">29</div>
							</td>
							<td class="day adjacent-month last-month calendar-day-2017-06-30">
								<div class="day-contents">30</div>
							</td>
							<td class="day calendar-day-2017-11-01">
								<div class="day-contents">1</div>
							</td>
							<td class="day calendar-day-2017-11-02">
								<div class="day-contents">2</div>
							</td>
							<td class="day calendar-day-2017-11-03">
								<div class="day-contents">3</div>
							</td>
							<td class="day calendar-day-2017-11-04">
								<div class="day-contents">4</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2017-11-05">
								<div class="day-contents">5</div>
							</td>
							<td class="day calendar-day-2017-11-06">
								<div class="day-contents">6</div>
							</td>
							<td class="day calendar-day-2017-11-11">
								<div class="day-contents">7</div>
							</td>
							<td class="day calendar-day-2017-11-08">
								<div class="day-contents">8</div>
							</td>
							<td class="day calendar-day-2017-11-09">
								<div class="day-contents">9</div>
							</td>
							<td class="day calendar-day-2017-11-10">
								<div class="day-contents">10</div>
							</td>
							<td class="day calendar-day-2017-11-11">
								<div class="day-contents">11</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2017-11-12">
								<div class="day-contents">12</div>
							</td>
							<td class="day calendar-day-2017-11-13">
								<div class="day-contents">13</div>
							</td>
							<td class="day calendar-day-2017-11-14">
								<div class="day-contents">14</div>
							</td>
							<td class="day calendar-day-2017-11-15">
								<div class="day-contents">15</div>
							</td>
							<td class="day calendar-day-2017-11-16">
								<div class="day-contents">16</div>
							</td>
							<td class="day calendar-day-2017-11-17">
								<div class="day-contents">17</div>
							</td>
							<td class="day calendar-day-2017-11-18">
								<div class="day-contents">18</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2017-11-19">
								<div class="day-contents">19</div>
							</td>
							<td class="day calendar-day-2017-11-20">
								<div class="day-contents">20</div>
							</td>
							<td class="day calendar-day-2017-11-21">
								<div class="day-contents">21</div>
							</td>
							<td class="day calendar-day-2017-11-22">
								<div class="day-contents">22</div>
							</td>
							<td class="day calendar-day-2017-11-23">
								<div class="day-contents">23</div>
							</td>
							<td class="day calendar-day-2017-11-24">
								<div class="day-contents">24</div>
							</td>
							<td class="day calendar-day-2017-11-25">
								<div class="day-contents">25</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2017-11-26">
								<div class="day-contents">26</div>
							</td>
							<td class="day calendar-day-2017-11-27">
								<div class="day-contents">27</div>
							</td>
							<td class="day calendar-day-2017-11-28">
								<div class="day-contents">28</div>
							</td>
							<td class="day calendar-day-2017-11-29">
								<div class="day-contents">29</div>
							</td>
							<td class="day calendar-day-2017-11-30">
								<div class="day-contents">30</div>
							</td>
							<td class="day adjacent-month next-month calendar-day-2017-08-01">
								<div class="day-contents">1</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
    <!--/main-->
</div>
        <script src="js/underscore-min.js" type="text/javascript"></script>
		<script src="js/moment-2.2.1.js" type="text/javascript"></script>
		<script src="js/clndr.js" type="text/javascript"></script>
		<script src="js/site.js" type="text/javascript"></script>
		   
		

</body>
</html>