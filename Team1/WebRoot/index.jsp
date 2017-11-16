<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>焦点学苑</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	$.getJSON("queryallbyhot.action",function(data){
		var str="";	
		for(var i=0;i<((data.length<10)?data.length:10);i++){
			str=str+"<a href=''><div class='kg-a fl'>"+
							"<div class='kg-a1 fl'>"+
								"<img src='"+data[i].post_picture+"' />"+
							"</div>"+
							"<div class='kg-a2 fl'>"+
								"<div class='kg-a3'>"+data[i].post_title+"</div>"+
								"<a href='queryStudentById.action?id="+data[i].post_student.student_id+"'><div class='kg-a4'>"+data[i].post_student.student_name+"</div></a>"+
								"<div class='kg-a5'>发表于"+data[i].post_date+"</div>"+
								"<div class='kg-a6'>"+
									"<span><img src='images/col-c1.jpg' />0</span>"+" <span>"+
									"<img src='images/col-c2.jpg' />3"+
									"</span> <em><img src='images/col-c3.jpg' />"+
									"</em> <em>"+
									"<img src='images/col-c4.jpg' /></em> <em>"+
									"<img src='images/col-c5.jpg' /></em>"+
								"</div>"+
								"<div class='kg-t'>"+
									"<img src='images/kg-t.png' />"+
								"</div>"+
							"</div>"+
						"</div></a>"
			}
		$("#tiezi").html(str);
	});
		$.getJSON("querystudentbyhot.action",function(data){
		var str="";	
		for(var i=0;i<((data.length<5)?data.length:5);i++){
			str=str+"<li><div class='rng-a'>"+
							"<a href='queryStudentById.action?id="+data[i].student_id+"'><img src='"+data[i].student_head+"'></a>"+
						"</div>"+
						
						"<div class='rng-b'>"+
							"<a href=''><img src='images/more.jpg'/></a>"+
						"</div><a class='kg-a3'>"+data[i].student_name+"</a></li>"
			}
		$("#daren").html(str);
	});
	
});
	</script>


</head>

<body>


	<div class="header">
		<div class="head wrap">
			<div class="logo fl">
				<a href=""><img src="images1/logo.png" /></a>
			</div>
			<div class="head-right fr">
				<div class="head-a fr">
					<div class="head-a1 fl">
						<a href="login.jsp"><img src="images1/tb-a.png" /></a>
					</div>
					<div class="head-a1 fl">
						<div>${sessionScope.student.student_name}</div>
						
					</div>
					<div class="head-a3 login-click fl"><a href="login.jsp">退出</a></div>
					

				</div>
				<div class="clearfix"></div>
				<div class="nav fr">
					<ul>
						<li class="nav-cut"><a href="index.jsp">首页</a></li>
						<li><a >文章</a>
							<div class="sub-nav">
								<div class="bich-top"></div>
								<div class="bich">
									<a href="Cpage.action">表白墙</a> <a href="page.action">失物招领</a> <a
										href="market.action?thispage=1">二手交易</a>
								</div>

							</div></li>
						<li><a href="Cpage.action">表白墙</a></li>
						<li><a href="page.action">失物招领</a></li>
						<li><a href="market.action?thispage=1">二手交易</a></li>
						<li><a href="contact.jsp">联系我们</a></li>

					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<div class="content">
		<div class="idx-banner">
			<div class="fullSlide">
				<div class="box">
					<ul>
						<li
							style="background:url(upload/ban.jpg) no-repeat center center;">
							<a href="javascript:www.baidu.com;"></a>
						</li>
						<li
							style="background:url(upload/ggo.jpg) no-repeat center center;">
							<a href="javascript:;"></a>
						</li>
						<li
							style="background:url(upload/yj.jpeg) no-repeat center center;">
							<a href="javascript:;"></a>
						</li>
					</ul>
				</div>
				<div class="hbox">
					<ul></ul>
				</div>
			</div>
		</div>

		<div class="wrap">
			<div class="cont-box">
				<div class="cont-a fl">
					<div class="cont-a1">
						<a href="">新手上路</a><span>|</span><a href="">官方Q群</a><span>|</span><a
							href="">官方Q群</a>
					</div>
					<div class="cont-a1">
						<a href="">新手上路</a><span>|</span><a href="">官方Q群</a><span>|</span><a
							href="">官方Q群</a>
					</div>
				</div>

				<div class="cont-b fl">
					<div class="cont-b1">
						<input type="text" class="cont-text fl" value="" /> <input
							type="button" class="cont-btn fl" />
					</div>
					<div class="cont-b2">热门搜索：校园卡 钥匙 约会</div>
				</div>

				<div class="cont-c fr">
					<div class="cont-c1 fl">
						帖子查询<a href=""><img src="images/QQ.jpg" /></a><a href=""><img
							src="images/QQ.jpg" /></a>
					</div>
					<div class="cont-c2 fr"></div>
				</div>
			</div>
			<div class="kg-box">
				<div class="kg-title">最热文章推荐</div>
				<div class="kg" id="tiezi">
				


				</div>
			</div>

			<div class="rng-box">
				<div class="kg-title">达人推荐</div>
				<ul class="rng-ul" id="daren">
					
				</ul>
			</div>

			<div class="kg-box">
				<div class="kg-title">最新文章推荐</div>
				<div class="kg">
					<a href=""><div class="kg-a fl">
							<div class="kg-a2 fl">
								<div class="kg-a3">只要生活有期盼，一个人也可以很好。</div>
								<div class="kg-a4">水果大人</div>
								<div class="kg-a5">发表于 2015-11-02</div>
								<div class="kg-a6">
									<span><img src="images/col-c1.jpg">0</span> <span><img
										src="images/col-c2.jpg">3</span> <em><img
										src="images/col-c3.jpg"></em> <em><img
										src="images/col-c4.jpg"></em> <em><img
										src="images/col-c5.jpg"></em>
								</div>
								<div class="kg-y">
									<img src="images/kg-y.png">
								</div>
							</div>
							<div class="kg-a1 fl">
								<img src="upload/kg-a3.jpg">
							</div>
						</div></a>
					<div class="kg-b fl">
						<a href=""><div class="kg-c1 fl">
								<img src="upload/kg-a4.jpg">
							</div>
							<div class="kg-a2 fl">
								<div class="kg-a3">只要生活有期盼，一个人也可以很好。</div>
								<div class="kg-a4">水果大人</div>
								<div class="kg-a5">发表于 2015-11-02</div>
								<div class="kg-a6">
									<span><img src="images/col-c1.jpg">0</span> <span><img
										src="images/col-c2.jpg">3</span> <em><img
										src="images/col-c3.jpg"></em> <em><img
										src="images/col-c4.jpg"></em> <em><img
										src="images/col-c5.jpg"></em>
								</div>
								<div class="kg-t">
									<img src="images/kg-t.png">
								</div>
							</div></a> <a href=""><div class="kg-c2 fl">
								<img src="upload/kg-a5.jpg">
							</div></a>
					</div>


				</div>
				<div class="kg">
					<a href=""><div class="kg-a fl">
							<div class="kg-a1 fl">
								<img src="upload/kg-a5.jpg">
							</div>
							<div class="kg-a2 fl">
								<div class="kg-a3">只要生活有期盼，一个人也可以很好。</div>
								<div class="kg-a4">水果大人</div>
								<div class="kg-a5">发表于 2015-11-02</div>
								<div class="kg-a6">
									<span><img src="images/col-c1.jpg">0</span> <span><img
										src="images/col-c2.jpg">3</span> <em><img
										src="images/col-c3.jpg"></em> <em><img
										src="images/col-c4.jpg"></em> <em><img
										src="images/col-c5.jpg"></em>
								</div>
								<div class="kg-t">
									<img src="images/kg-t.png">
								</div>
							</div>
						</div></a> <a href=""><div class="kg-a fl">
							<div class="kg-a2 fl">
								<div class="kg-a3">只要生活有期盼，一个人也可以很好。</div>
								<div class="kg-a4">水果大人</div>
								<div class="kg-a5">发表于 2015-11-02</div>
								<div class="kg-a6">
									<span><img src="images/col-c1.jpg">0</span> <span><img
										src="images/col-c2.jpg">3</span> <em><img
										src="images/col-c3.jpg"></em> <em><img
										src="images/col-c4.jpg"></em> <em><img
										src="images/col-c5.jpg"></em>
								</div>
								<div class="kg-y">
									<img src="images/kg-y.png">
								</div>
							</div>
							<div class="kg-a1 fl">
								<img src="upload/kg-a6.jpg" />
							</div>
						</div></a> <a href=""><div class="kg-a2 fl">
							<div class="kg-a3">只要生活有期盼，一个人也可以很好。</div>
							<div class="kg-a4">水果大人</div>
							<div class="kg-a5">发表于 2015-11-02</div>
							<div class="kg-a6">
								<span><img src="images/col-c1.jpg" />0</span> <span><img
									src="images/col-c2.jpg" />3</span> <em><img
									src="images/col-c3.jpg" /></em> <em><img
									src="images/col-c4.jpg" /></em> <em><img
									src="images/col-c5.jpg" /></em>
							</div>
							<div class="kg-y">
								<img src="images/kg-y.png" />
							</div>
						</div></a>
				</div>


			</div>

			<div class="idx-btm">
				<a href=""><img src="upload/act-f.jpg" /></a>
			</div>
		</div>
		<!--wrap-->
	</div>



	<!--底部-->
	<div class="footer">
		<div class="wrap">
			<div class="foot">
				<div class="foot-left fl">
					<a href="">关于我们</a> <a href="">加入我们</a> <a href="contact.jsp">联系我们</a>
					<a href="">媒体采访</a>
				</div>
				<div class="foot-c fl">
					<a href=""><img src="images/foot-logo.jpg" /></a>
				</div>
				<div class="foot-right fr">
					<a href="">同城活动</a> <a href="">课程资讯</a> <a href="">最新发布</a> <a
						href="">热门文章</a>
				</div>
			</div>
			
		</div>
	</div>


	
	
	
	
	
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/jquery.SuperSlide.2.1.1.js"></script>
	<script src="js/Action.js"></script>

	<script type="text/javascript">
		$(function() {
			var nav = $(".header"); //得到导航对象
			var win = $(window); //得到窗口对象
			var sc = $(document);//得到document文档对象。
			win.scroll(function() {
				if (sc.scrollTop() >= 580) {
					nav.addClass("head-cut");
					$(".head-cut").fadeIn(500);
				} else {
					nav.removeClass("head-cut");
					$(".head-cut").fadeOut(500);
				}
			})
		})
	</script>
	<script type="text/javascript">
		$(function($) {
			$(".fullSlide").slide(
					{
						titCell : ".hbox ul",
						mainCell : ".box ul",
						effect : "fold",
						mouseOverStop : false,
						autoPlay : true,
						autoPage : true,
						trigger : "click",
						startFun : function(i) {
							var curLi = jQuery(".fullSlide .bd li").eq(i);
							if (!!curLi.attr("_src")) {
								curLi.css("background-image",
										curLi.attr("_src")).removeAttr("_src")
							}
						}
					});

		});
	</script>
</body>
</html>

