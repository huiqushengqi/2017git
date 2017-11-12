<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/lib/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="distDM/css/barrager.css" type="text/css" />
<script src="distDM/js/jquery.barrager.min.js"></script>
<title>Pilipala | 弹幕社交</title>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/x-icon" href="http://www.app-echo.com/favicon.ico?v=ccb7e6d">
<link href="css/style.css" rel="stylesheet">
<link href="css/music.css" rel="stylesheet">
<link href="js/buquan/jsuggest.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" href="css/jquery.pagination.css" />
<script src="js/jquery.pagination.min.js"></script>
<script src="js/buquan/jSuggest.js"></script>

<style type="text/css">
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
<script type="text/javascript">
	//加载完毕后初始化弹幕界面
	$(document).ready(function(){
	//通过MusicServlet向后台取数据
	refresh(1);
	$.getJSON("MusicServlet",{flag:"getPage",music_id:"${requestScope.music.music_id}"},function(data){
	
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
	
	//初始化自动补全
	 $("#search").jSuggest({
	 minchar:1,
	 url:"SearchServlet?flag=SearchMusic",
	 type:"post",
	 data:"music_title",
	 autoChange:true,
	 delay:500
	 
	});
	
	//弹幕区
	$.ajaxSettings.async = false;
	$.getJSON("MusicServlet",{flag:"getMdanmu",music_id:"${requestScope.music.music_id}"},function(data){
	//每条弹幕发送间隔
	var looper_time=3*1000;
	var items=data;
	//弹幕总数
	var total=data.length;
	//是否首次执行
	var run_once=true;
	//弹幕索引
	var index=0;
	//先执行一次
	barrager();
	function  barrager(){
	  if(run_once){
	      //如果是首次执行,则设置一个定时器,并且把首次执行置为false
	      looper=setInterval(barrager,looper_time);                
	      run_once=false;
	  }
	  //发布一个弹幕
	  $('body').barrager(items[index]);
	  //索引自增
	  index++;
	  //所有弹幕发布完毕，清除计时器。
	  if(index == total){
	      clearInterval(looper);
	      return false;
	  }
	}
	});
	
	});

	//发送弹幕
	function send_danmu() {
		var item={
		   img:"${sessionScope.user.user_head}", //图片 
		   info:document.getElementById('comment-input').value, //文字 
		   href:'javascript:void(0)', //链接 
		   close:false, //显示关闭按钮 
		   speed:6, //延迟,单位秒,默认6 
		   close:true,
		   color:'#fff', //颜色,默认白色 
		   old_ie_color:'#000000', //ie低版兼容色,不能与网页背景相同,默认黑色 
 		}
		$("body").barrager(item);
		//发送一条弹幕并存到数据库评论表
		$.getJSON("MusicServlet",{flag:"sendComment",music_id:"${requestScope.music.music_id}",comment_userid:"${sessionScope.user.user_id}",comment_content:$(".comment-input").val()},function (data){
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
			
		 //发送一条弹幕存到数据库弹幕表
		 $.getJSON("MusicServlet",{flag:"setMdanmu",music_id:"${requestScope.music.music_id}",comment_text:$(".comment-input").val(),danmu_img:"${sessionScope.user.user_head}"});
			
			//刷新一次分页组件
			$.getJSON("MusicServlet",{flag:"getPage",music_id:"${requestScope.music.music_id}"},function(data){
	
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
		
		$(".comment-input").val("");
		var text_obj = '{ "text":"' + text + '","color":"' + color
				+ '","size":"' + size + '","position":"' + position
				+ '","time":' + time + ',"isnew":""}';
		var new_obj = eval('(' + text_obj + ')');
		//添加一条弹幕
		
		document.getElementById('comment-input').value = '';
	};
	
	//刷新评论
	function refresh(current){
	$.getJSON("MusicServlet",{flag:"queryCommentPage",music_id:"${requestScope.music.music_id}",page:current},function (data){
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


</head>

<body>
	
	<main id="app" >
		<main class="main-app">
		<div style="background-image:url('img/demo-1-bg.jpg');background-size:100% 100%">
			<header class="headerv3">
				<a class="headerv3-logo"></a>
				<div class="headerv3-user">
					<!---->
					<a class="">
					<img src="${sessionScope.user.user_head }"></a>
					<a class="headerv3-logout"></a>
				</div>
				<div class="headerv3-search">
					<input id="search" type="text" placeholder="搜索内容">
					<!---->
					<!---->
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

							<a href="AinfoServlet" class="back">返回</a>
	

						</nav>
						<div class="sound-title clearfix">
							<div class="title">${requestScope.music.music_title}</div>
							<div class="sound-status">
								<h5>
									<span>${requestScope.music.music_click}</span>次播放
								</h5>
							</div>
						</div>
						<div class="sound-bullets-wp">
							<div class="sound-dm">
								<div id="dm-parentf">
									<div id="dm-parent" style="position: relative;">
										<div id="danmu" style="width:1000px;height:350px">
										<img src="music${requestScope.music.music_cover}" style="width:1000px;height:350px">
										</div>
									</div>
								</div>
							</div>
							<div class="bg-mask-wp">
								<img
									src=""
									class="pic">
								<div class="bg-mask"></div>
							</div>
							<div class="sound-cover">
								<img src="music${requestScope.music.music_cover}">
								<!---->
								<!---->
							</div>
							<!---->
							<div class="sound-controls clearfix">
								<div class="audio green-audio-player">
									<div class="loading">
										<div class="spinner"></div>
									</div>
									<div class="play-pause-btn">
										<svg xmlns="http://www.w3.org/2000/svg" width="18" height="24"
											viewBox="0 0 18 24">
										      <path fill="#566574" fill-rule="evenodd"
												d="M18 12L0 24V0" class="play-pause-icon" id="playPause">
										    </svg>
									</div>

									<div class="controls">
										<span class="current-time">0:00</span>
										<div class="slider" data-direction="horizontal">
											<div class="progress">
												<div class="pin" id="progress-pin" data-method="rewind"></div>
											</div>
										</div>
										<span class="total-time">0:00</span>
									</div>

									<div class="volume">
										<div class="volume-btn">
											<svg xmlns="http://www.w3.org/2000/svg" width="24"
												height="24" viewBox="0 0 24 24">
										        <path fill="#566574" fill-rule="evenodd"
													d="M14.667 0v2.747c3.853 1.146 6.666 4.72 6.666 8.946 0 4.227-2.813 7.787-6.666 8.934v2.76C20 22.173 24 17.4 24 11.693 24 5.987 20 1.213 14.667 0zM18 11.693c0-2.36-1.333-4.386-3.333-5.373v10.707c2-.947 3.333-2.987 3.333-5.334zm-18-4v8h5.333L12 22.36V1.027L5.333 7.693H0z"
													id="speaker">
										      </svg>
										</div>
										<div class="volume-controls hidden">
											<div class="slider" data-direction="vertical">
												<div class="progress">
													<div class="pin" id="volume-pin" data-method="changeVolume"></div>
												</div>
											</div>
										</div>
									</div>
									<audio crossorigin>
										<source src="music${requestScope.music.music_link}" type="audio/mpeg">
									</audio>
								</div>
							</div>
						</div>
						<div class="user-ctrl-bar">
							<div class="tags-area clearfix">
								<div class="tags-list">
									<ul>
										<li>${requestScope.music.music_type}</li>
									</ul>
									<!---->
								</div>
								<div class="adder-infos">

									<a class="adder-user-avatar user-avatar icon-famous icon-famousnull"><img src="music${requestScope.music.music_cover}"></a>
									<div class="adder-text">
										<a href="http://www.app-echo.com/#/user/2142969"
											class="addername">${requestScope.music.music_singer}</a>
									</div>
								</div>
							</div>
							<div class="user-comment clearfix">
								<input type="text" placeholder="发个弹幕和评论" class="comment-input"
									id="comment-input">
								<div class="btn-submit" onclick="send_danmu()">发送</div>
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
								${requestScope.music.music_abstract} <br>
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
				</div>

			</footer>
			</div>
		</main>
		<div>
			<div class="qr-mask" style="display: none;"></div>
			<div class="qr-body" style="display: none;">
				<div class="qr-main">
					<h1>
						分享到微信朋友圈<i class="close">×</i>
					</h1>
					<div id="qrcode"></div>
					<h2>打开微信，点击底部的“发现”，</h2>
					<h2>使用“扫一扫”即可将网页分享至朋友圈。</h2>
				</div>
			</div>
		</div>
		<div>
			<!---->
			<!---->
		</div>
	</main>
	<script src="js/music.js"></script>


</body>
</html>