<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  lang="zh-CN">
	<head>
		<meta charset="UTF-8" />
		<meta name="keywords" content="" />
		<link rel="shortcut icon" href="images/favicon.png" type="image/png" />
		<link rel="stylesheet" href="css/style1.css" type="text/css"
			media="screen" />
		<link rel="stylesheet" href="css/styles/prettyPhoto.css"
			type="text/css" media="screen" />
		<link id="gFontName" rel="stylesheet"
			href="http://fonts.googleapis.com/css?family=Cuprum:regular,italic,bold,bolditalic"
			type="text/css" />
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/slider.css">
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
		<link rel="stylesheet" type="text/css" href="css/navstyle.css" />
		<link rel="stylesheet" type="text/css" href="css/content.css" />
		<link rel="stylesheet" type="text/css" href="css/detail.css" />
		<link rel="stylesheet" type="text/css" href="css/haruna.css" />
		<link rel="stylesheet" type="text/css" href="css/post.css" />
		<link rel="stylesheet" type="text/css" href="css/uploadify.css" />
		<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
		<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/TitilliumText.font.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>
		<script type="text/javascript" src="js/scripts.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
		<script type="text/javascript" src="js/shortcode.js"></script>
		<title>Pilipala | 主页</title>
		<!-- Shared on MafiaShare.net  -->
	</head>
	<body class="standard simple">
		<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
		<script src="js/script.js" type="text/javascript"></script>
		<script type="text/javascript">
		jQuery(document).ready(function() {
			if (jQuery.browser.msie && jQuery.browser.version < 9) {
				var $windowWidth = jQuery(window).width() + 17;
				var $windowHeight = jQuery(window).height() + 17;
			} else {
				var $windowWidth = window.innerWidth;
				var $windowHeight = window.innerHeight;
			}
			jQuery('body').append('<div id="preloaderMotion" />');
			jQuery('a.header_arrow').addClass('hidden');
			var $slider = '#sliderMotion';
			var $preloader = '#preloaderMotion';
			var $images = jQuery($slider + ' li img');
			var $max = $images.length;
			$images.each(function() {
				var img = new Image();
				img.src = jQuery(this).attr('src');
				var intervalId = setInterval(function() {
					if (img.complete) {
						clearInterval(intervalId);
						$max--;
						jQuery($preloader).append('<img id="nMotion' + $max + '" src="' + img.src + '" width="60" height="35" alt="" />');
						jQuery($preloader).find('img#nMotion' + $max).animate({
							opacity : 1
						}, 500);
						if ($max == 0) {
							LoadImageStart(jQuery($slider));
							jQuery($preloader).fadeOut(500, function() {
								jQuery(this).css({
									display : 'none'
								});
								showHideContent();
							});
						}
					}
				}, 50);
			});
			function LoadImageStart(slider) {
				slider.cmsmsMotionSlider({
					sliderWidth : $windowWidth,
					sliderHeight : $windowHeight,
					pauseOnHover : false,
					showPause : false
				});
				jQuery('a[rel="prettyPhoto[bgSlider]"]').prettyPhoto({
					animationSpeed : 'normal',
					deeplinking : false,
					social_tools : false
				});
			}
			jQuery(window).resize(function() {
				if (jQuery.browser.msie && jQuery.browser.version < 9) {
					var $windowWidth = jQuery(window).width() + 17;
					var $windowHeight = jQuery(window).height();
				} else {
					var $windowWidth = window.innerWidth;
					var $windowHeight = window.innerHeight;
				}
				jQuery('.cmsmsMotionSliderContainer, .cmsmsMotionSlides, .cmsmsMotionSlides canvas, .cmsmsMotionSlides img, .cmsmsMotionSlides iframe').css({
					width : $windowWidth + 'px',
					height : $windowHeight + 'px'
				});
				jQuery('.cmsmsMotionControl').css({
					height : $windowHeight + 'px'
				});
				jQuery('.cmsmsMotionNavigation').css({
					height : parseInt($windowHeight - 195) + 'px'
				});
			});
		});
	</script>
		<!-- _________________________ Start Slider __________________________ -->
		<ul id="sliderMotion">
			<li data-thumb="images/slider/thumbs/img1.png" data-start="top left"
				data-finish="bottom right" data-zoom="out" data-animation="10">
				<img src="images/slider/img1.png" alt="Banner Image 1" />
			</li>
			<li data-thumb="images/slider/thumbs/img2.png"
				data-start="bottom center" data-finish="center center"
				data-zoom="in" data-animation="15">
				<img src="images/slider/img2.png" alt="Banner Image 2" />
			</li>
			<li data-thumb="images/slider/thumbs/img3.jpg"
				data-start="bottom right" data-finish="bottom left" data-zoom="out">
				<img src="images/slider/img3.jpg" alt="Banner Image 3" />
			</li>
			<li data-thumb="images/slider/thumbs/img4.jpg"
				data-start="center center" data-finish="center center"
				data-zoom="in">
				<a class="video autostop hd" ><img
						src="images/slider/img4.jpg" alt="Banner Image 4" /> </a>
			</li>
			<li data-thumb="images/slider/thumbs/img5.png"
				data-start="center left" data-finish="top right" data-zoom="out"
				data-animation="15">
				<img src="images/slider/img5.png" alt="Banner Image 5" />
			</li>
		</ul>
		<!-- _________________________ Start Page ___________________________ -->
		<div id="page" class="hideContent">
			<!-- _________________________ Start Header _________________________ -->
			<div class="header_wrap">
				<div id="header">
					<div class="header_inner">
						<a class="logo" title="" href="AinfoServlet"> <img
								src="${sessionScope.user.user_head}" /> <audio
								autoplay="autoplay"> <source src="/mengzhan.mp3"
								type="audio/mpeg" /> </audio> </a>
						<!-- _________________________ Start Navigation _____________________ -->
						<div class="navigation_wrap">
							<ul id="navigation">
								<li>
									<a href="AinfoServlet">首页<span>First</span></a>
								</li>
								<li id="one1" onclick="setTab('one',1,4)">
									<a>音乐<span>GO</span> </a>
								</li>
								<li id="one2" onclick="setTab('one',2,4)">
									<a>视频<span>GO</span> </a>
								</li>
								<li id="one3" onclick="setTab('one',3,4)">
									<a  >图片<span>GO</span> </a>
								</li>
								<li id="one4" onclick="setTab('one',4,4)">
									<a href="updateuser.jsp" target="view_window">个人中心<span>GO</span></a>
								</li>
							</ul>
						</div>
						<!-- _________________________ Finish Navigation ____________________ -->
					</div>
					<div class="header_arrow_wrap">
						<a class="header_arrow"></a>
					</div>
				</div>
			</div>
			<!-- _________________________ Finish Header ________________________ -->
		</div>
		<!-- _________________________ tab Page __________________________ -->
		<div id="lib_Tab1">
			<div class="lib_Contentbox lib_tabborder">
				<div id="con_one_1" style="display: none">
					<div
						style="width: 1200px; height: auto; color: black; position: absolute; left: 15px;">
						<!-- 音乐区块 -->
						<c:forEach items="${requestScope.musiclist}" var="list">
							<div class="topic" id="13500479"
								style="width:auto;opacity: 0.9; visibility: visible;">
								<a href="MusicServlet?flag=enterMusic&music_id=${list.music_id}">
								<img src="music${list.music_cover}"> </a>
								<b style="margin-right: 1cm">歌曲：${list.music_title}
								<br>歌手：${list.music_singer}</b>
							</div>
						</c:forEach>
					</div>
				</div>
				<div id="con_one_2" style="display: none">
					<div style="width: 1200px; height: auto; color: black; position: absolute; left: 15px;">
						<!-- 视频区块 -->
						<c:forEach items="${requestScope.videolist}" var="list1">
							<div class="topic" id="13500479"
								style="width:auto;opacity: 0.9; visibility: visible;">
										<a href="VideoServlet?flag=enterVideo&video_id=${list1.video_id}"><img
												src="video${list1.video_cover}">
										</a>
									<b>
										${list1.video_title}
									</b>
							</div>
						</c:forEach>
					</div>
				</div>
				<div id="con_one_3" style="display: none">
					<div style="width: 1200px; height: auto; color: black; position: absolute; left: 15px;">
						<!-- 图片区块 -->
						<c:forEach items="${requestScope.comiclist}" var="list2">
							<div class="topic" id="13500479"
								style="width:auto;opacity: 0.9; visibility: visible;">
								
										<a href="ShowComicServlet?piece=${list2.comic_id}"><img
												src="comic${list2.comic_cover }"> </a>
									<p>
										${list2.comic_title}
									</p>
	                        </div>
						</c:forEach>
					</div>
				</div>
				<div id="con_one_4" style="display: none">
					
				</div>
			</div>
		</div>
	</body>
	<style type="text/css">
<!--
body {
	padding: 0;
	font: 12px "宋体";
}

/*选项卡1*/
#lib_Tab1 {
	width: 500px;
	margin: 0px;
	padding: 0px;
	margin-bottom: 15px;
}

/*选项卡2*/
#lib_Tab2 {
	width: 576px;
	margin: 0px;
	padding: 0px;
	margin-bottom: 15px;
}

/*菜单class*/
.lib_tabborder {
	border: 1px solid #95C9E1;
}

.lib_Menubox {
	height: 28px;
	line-height: 28px;
	position: relative;
}

.lib_Menubox ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
	position: absolute;
	top: 3px;
	left: 0;
	margin-left: 10px;
	height: 25px;
	text-align: center;
}

.lib_Menubox li {
	float: left;
	display: block;
	cursor: pointer;
	width: 114px;
	color: #949694;
	font-weight: bold;
	margin-right: 2px;
	height: 25px;
	line-height: 25px;
	background-color: #E4F2FD
}

.lib_Menubox li.hover {
	padding: 0px;
	background: #fff;
	width: 116px;
	border-left: 1px solid #95C9E1;
	border-top: 1px solid #95C9E1;
	border-right: 1px solid #95C9E1;
	color: #739242;
	height: 25px;
	line-height: 25px;
}

.lib_Contentbox {
	clear: both;
	border: none;
	height: auto;
	width: 1000px;
	text-align: center;
	padding-top: 8px;
	position: relative;
	top: 20px;
	left: 250px;
	z-index: 9999;
}
b
{
	font:1em Arial;
	font-size:150%;
}
-->
</style>
	<script>
	function setTab(name, cursel, n) {
		for (i = 1; i <= n; i++) {
			var menu = document.getElementById(name + i);
			var con = document.getElementById("con_" + name + "_" + i);
			menu.className = i == cursel ? "hover" : "";
			con.style.display = i == cursel ? "block" : "none";
		}
	}
	//--!>
</script>
</html>
