<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>Pilipala | 弹幕社交</title>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/x-icon" href="http://www.app-echo.com/favicon.ico?v=ccb7e6d">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/danmuplayer.css">
<link rel="stylesheet" href="css/jquery.pagination.css" />
<link href="js/buquan/jsuggest.css" type="text/css" rel="stylesheet"/>
<script src="js/lib/jquery-1.11.1.min.js"></script>
<script src="js/danmuplayer.js"></script>
<script src="js/jquery.pagination.min.js"></script>
<script src="js/buquan/jSuggest.js"></script>

<script type="text/javascript">
	//文档加载后执行的代码
	$(document).ready(function(){
	//初始化视频插件
	var danmuss={ 1:[ { "text":"hahahaha" , "color":"red" ,"size":"0","position":"0"}, 
	{ "text":"233333" , "color":"red" ,"size":"0","position":"2"} ],
	 3:[ { "text":"poi" , "color":"red" ,"size":"1","position":"1"}, 
	{ "text":"2333" , "color":"#FFFFFF" ,"size":"0","position":"0"} ],
 	50:[ { "text":"真好" , "color":"#FFFFFF" ,"size":"0","position":"2"}, ] };
	
	var a_danmu=({ "text":"我是原谅绿" , "color":"green" ,"size":"1","position":"0","time":60});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu1=({ "text":"我是白色" , "color":"white" ,"size":"1","position":"0","time":30});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu2=({ "text":"2333333" , "color":"green" ,"size":"1","position":"0","time":40});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu3=({ "text":"哈哈哈" , "color":"red" ,"size":"1","position":"0","time":70});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu4=({ "text":"挺好看" , "color":"green" ,"size":"1","position":"0","time":80});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu5=({ "text":"老司机开车了" , "color":"red" ,"size":"1","position":"0","time":90});
	$('#danmu').danmu("add_danmu",a_danmu);
	var a_danmu6=({ "text":"比较好看" , "color":"white" ,"size":"1","position":"0","time":100});
	$('#danmu').danmu("add_danmu",a_danmu);
	
	$("#danmup").danmuplayer({
	src:"video${requestScope.video.video_link}",       //视频源
	width:900,            //视频宽度
	height:500,            //视频高度
	speed:20000,
	top_botton_danmu_time:6000,
	url_to_get_danmu:"VideoServlet?flag=getVdanmu&video_id=${requestScope.video.video_id}",
	url_to_post_danmu:"VideoServlet?flag=setVdanmu&video_id=${requestScope.video.video_id}"
	});
	
	$("#danmu").danmu('danmu_start');
	//通过videoservl向后台取数据
	refresh(1);
	
	$.getJSON("VideoServlet",{flag:"getPage",video_id:"${requestScope.video.video_id}"},function(data){
	
		$("#mypage").pagination({
	   currentPage: data[0],// 当前页数
	   totalPage: data[1],// 总页数
	   isShow: true,// 是否显示首尾页
	   count: 7,// 显示个数
	   homePageText: "首页",// 首页文本
	   endPageText: "尾页",// 尾页文本
	   prevPageText: "上一页",// 上一页文本
	   nextPageText: "下一页",// 下一页文本
	   callback: function(current) {
	       // 回调,current(当前页数)
	       refresh(current);
	       }
	       
		});
	});
	
	//初始化自动补全
	 $("#search").jSuggest({
	 minchar:1,
	 url:"SearchServlet?flag=SearchVideo",
	 type:"post",
	 data:"video_title",
	 autoChange:true,
	 delay:500
	 
	});

	});
	
	//发送评论
	function send_comment(){
	
	$.getJSON("VideoServlet",{flag:"sendComment",video_id:"${requestScope.video.video_id}",comment_userid:"${sessionScope.user.user_id}",comment_content:$(".comment-input").val()},function (data){
	var commentStr="";
	
	for(var i=0;i<data[0].length;i++){
		commentStr=commentStr+"<li class='comment-list clearfix'>"
		+ "<a class='user-avatar user-avatar icon-famous icon-famousnull'>"
		+ "<img src="+data[1][i].user_head+"></a>"
		+ "<div class='comment-inner-wp'><div class='user-info'><a class='user-name'>"+data[1][i].user_name+"</a>"
		+ "<span class='user-date'>"+data[0][i].comment_date+"</span>"
		+ "</div>"
		+ "<p class='user-comment-info'>"+data[0][i].comment_content+"</p>"
		+ "</div>"
		+ "</li>";
	}
	$(".comment-area").html(commentStr);
	});
	
	$.getJSON("VideoServlet",{flag:"getPage",video_id:"${requestScope.video.video_id}"},function(data){
	
		$("#mypage").pagination({
	   currentPage: data[0],// 当前页数
	   totalPage: data[1],// 总页数
	   isShow: true,// 是否显示首尾页
	   count: 5,// 显示个数
	   homePageText: "首页",// 首页文本
	   endPageText: "尾页",// 尾页文本
	   prevPageText: "上一页",// 上一页文本
	   nextPageText: "下一页",// 下一页文本
	   callback: function(current) {
	       // 回调,current(当前页数)
	       refresh(current);
	       
	   }
	     
		});
	});
	
	$(".comment-input").val("");
	}

	//刷新评论
	function refresh(current){
	$.getJSON("VideoServlet",{flag:"queryCommentPage",video_id:"${requestScope.video.video_id}",page:current},function (data){
		var commentStr="";
			
		for(var i=0;i<data[0].length;i++){
			commentStr=commentStr+"<li class='comment-list clearfix'>"
			+ "<a class='user-avatar user-avatar icon-famous icon-famousnull'>"
			+ "<img src="+data[1][i].user_head+"></a>"
			+ "<div class='comment-inner-wp'><div class='user-info'><a class='user-name'>"+data[1][i].user_name+"</a>"
			+ "<span class='user-date'>"+data[0][i].comment_date+"</span>"
			+ "</div>"
			+ "<p class='user-comment-info'>"+data[0][i].comment_content+"</p>"
			+ "</div>"
			+ "</li>";
		}
		$(".comment-area").html(commentStr);
	});
	}
</script>
<style type="text/css">
	#danmup{
		margin: 0 auto;
		width: 900px;
		height: 500px;
	}	
	
	#video-bullets{
		position: relative;
		height: 556px
	}
	
	#dm-parent {
		position: relative;
		z-index: 30;
	}
	
	#dm-parentf pre {
		display: none;
		position: relative;
		z-index: 99;
		right: 20px;
		float: right;
		background: #eee;
	}
</style>
		
	</head>

	<body>
		<main id="app">
			<main class="main-app">
			<div style="background-image:url('img/demo-1-bg.jpg');background-size:100% 100%">

				

				<header class="headerv3">
				<a href="http://www.app-echo.com/#/user/" class="headerv3-logo"><img src="./Perrier_欧美流行指南 - echo回声 _ 潮流音乐生活方式-3D音乐 弹幕社交 趣味铃声 变声录音 KTV_files/2c35330d407d3f6edb9d09a4ce563da9.png"></a>
				<div class="headerv3-user"><!----> <a class="">
				<img src="${sessionScope.user.user_head }"></a>
				<a class="headerv3-logout"></a>
				</div>
				<div class="headerv3-search">
				<input id="search" type="text" placeholder="搜索内容"> <!----> <!---->
				</div>
				</header>

				<div>
					<!---->
					<!---->
				</div>
				<main class="main-center">
					<div class="sound sound-info">
						<section class="main clearfix">
							<nav>

								<a  href="AinfoServlet" class="back">返回</a>

								
							</nav>
							<div class="sound-title clearfix">
								<div class="title">${requestScope.video.video_title}</div>
								<div class="sound-status">
									<h5><span>${requestScope.video.video_click}</span>次播放
					</h5>
								</div>
							</div>
							<div class="video-bullet">
								<div class="sound-dm">
									<div id="dm-parentf">
								<div id="dm-parent" style="position: relative;">
								
								</div>
								</div>
								</div>
								<div class="bg-mask-wp">
									<div class="bg-mask">
									<!-- 这里放播放器控件 -->
									<div id="danmup"></div>

									</div>
								</div>
								
								<!---->

							</div>
							<div class="user-ctrl-bar">
								<div class="tags-area clearfix">
									<div class="tags-list">
										<ul>
											<li>${requestScope.video.video_type}</li>
										</ul>
										<!---->
									</div>
									<div class="adder-infos">

										<a class="adder-user-avatar user-avatar icon-famous icon-famousnull"><img src="video${requestScope.video.video_cover }"></a>

										

										<div class="adder-text">
										<a class="addername">${requestScope.video.video_author}</a></div>
									</div>
								</div>
								<div class="user-comment clearfix"><input type="text" placeholder="点击这里评论" class="comment-input" id="comment-input">
									<div class="btn-submit" onclick="send_comment()" >发表评论</div>
								</div>

							</div>
						</section>
						<!---->
						<section class="infos clearfix">
							<div class="lyrics">
								<h1>简介</h1>
								<p class="infos">
									<!---->
									<!---->
									<!---->
									${requestScope.video.video_abstract}<br>
									<!---->
								</p>
							</div>
							<div class="comments">
								<h1>热门评论</h1>
								<ul class="comment-area">
									
								</ul>
								<div id="mypage" style="text-align:center;height:60px">
					
								</div>
							</div>
						</section>
						<!---->
					</div>
				</main>
				<footer class="footerv3">
					<div class="footerv3-cp clearfix">
						<div class="footerv3-logo">
						<img
							src="./echo回声 _ 潮流音乐生活方式-3D音乐 弹幕社交 趣味铃声 变声录音 KTV_files/kibeylogo@2x.png"
							alt="劈哩啪啦  Pilipala Culture Media Co.,Ltd.">
					</div>
					<p class="footerv3-desc">劈哩啪啦是一个年轻人的文化品牌，旗下有多个产品线，覆盖视频、音乐、漫画等多个领域。</p>
					<div class="footerv3-contact">
						商业合作<em>business@Pilipala.com </em><br> 广告投放 <em>Pilipala.com</em><br>
						Pilipala渠道合作 <em>echo@kibey.com</em><br> 版权合作、投诉 <em>Pilipala.com</em><br>
						联系客服 <em>联系管理员</em><br> 其他事项 <em>info@Pilipala.com</em><br>
						客服电话 <em>也请&nbsp;&nbsp;&nbsp;&nbsp;找管理员</em>
					</div>

				</footer>
				</div>
			</main>
			<div>
				<div class="qr-mask" style="display: none;"></div>
				<div class="qr-body" style="display: none;">
					<div class="qr-main">
						<h1>分享到微信朋友圈<i class="close">×</i></h1>
						<div id="qrcode"></div>
						<h2>打开微信，点击底部的“发现”，</h2>
						<h2>使用“扫一扫”即可将网页分享至朋友圈。</h2></div>
				</div>
			</div>
			<div>
				<!---->
				<!---->
			</div>
		</main>
</body>
</html>
