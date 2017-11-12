<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<head>
<style type="text/css">
<!--
.mydiv {
line-height:20px;
border: 1px solid #0080FF;
font-size: 12px;
z-index:999;
width: 500px;
height: 80px;
left:12%;
top:90%;
margin-left:-150px!important;/*FF IE7 该值为本身宽的一半 */
margin-top:-60px!important;/*FF IE7 该值为本身高的一半*/
margin-top:0px;
position:fixed!important;/* FF IE7*/
position:absolute;/*IE6*/
}
</style>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Pilipala | 漫画主页</title>
<meta name="keywords" content="黑夜主权,萌站,咻咻ACG">
<meta name="description" content="萌站成立于 2016 年六一儿童节，目标是<建设国内最大的二次元资源站>，并在为此努力的路上。我们分享来自全球的动漫资源，无门槛下载资源给你最佳的体验。">
<meta name="fragment" content="!">
<meta name='robots' content='index,follow' />
<link rel='stylesheet' id='generalStyle-css'  href='comicshowstyle.css' type='text/css' media='all' />
<link rel='stylesheet' id='contentFont-css'  href='http://fonts.googleapis.com/css?family=PT+Sans:regular&amp;subset=cyrillic,latin' type='text/css' media='all' />
<link id='headerFont-css' href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
<link rel='stylesheet' id='modal-css'  href='js/prettyPhoto/css/prettyPhoto.css' type='text/css' media='all' />
<script type='text/javascript' src='js/showcomicjs/jquery-1.7.min.js'></script>
<script type='text/javascript' src='js/showcomicjs/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='js/prettyPhoto/js/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='js/showcomicjs/jquery.quicksand.js'></script>
<script type="text/javascript" src="js/showcomicjs/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/showcomicjs/jquery.history.js"></script>
<script type='text/javascript' src="js/showcomicmain.js"></script>
<script type='text/javascript' src="js/showcomicjs/jquery.barrager.js"></script>
<script type='text/javascript' src="js/showcomicjs/jquery.barrager.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="images/comicpic/favicon_light.ico" />
<script type='text/javascript'>
var bgTime = 3000; // bg Image/Video animation display duration
var bgPaused  = false; // bg Image/Video animation paused
var menuTime = 600; // menu delay
var autoPlay = true; // Background audio autoplay
var loop = true; // Background audio loop or next song
var twtTime = 3000; // Twitter display duration
var prettyTheme = 'light_square'; //Pretty Photo Plug-in Teheme

var normalFade = false; // Normal fade animation
var frontPage = ''; // Front Page URL
var btnSoundURL = 'http://files.renklibeyaz.com/sounds/button2'; // Button Hover Sound
var menuPositionFixed = false;

//v1.2
var videoPaused = false;
var menuAlwaysOpen = false;
var bgStretch = true;

</script>
<script type='text/javascript' src="js/froogaloop.js"></script>
<style type="text/css">
#bodyLoading #loading {
	color: #F00;
}
</style>
</head>
<body >
<input type="hidden" name="piece" value="5">
<div id="popDiv" class="mydiv" style="display:none;">
<div align="right" style="padding:2px;z-index:2000;font-size:12px;cursor:pointer;position:absolute;right:0;" onclick="closeDivFun()">
<span style="border:1px solid #000;width:12px;height:12px;line-height:12px;text-align:center;display:block;background-color:#FFFFFF;left:-20px;">×</span>
</div>
 吐槽内容<input  style="border:0px;background:rgba(0, 0, 0, 0); "/><br/>
</div>
<script>
//弹出调用的方法
function showDivFun(){
    document.getElementById('popDiv').style.display='block';
}
//关闭事件
function closeDivFun(){
    document.getElementById('popDiv').style.display='none';
}
  
</script>

<div id="body-wrapper">
	<!-- BEGIN: Main Elements; Please don't change these items -->
	<div id="bgImage"><div id="bgImageWrapper"></div></div>
	<div id="bgPattern"></div>
	<div id="bgText"><h3></h3><div class="subText"></div></div>
	<div id="content">
		<div id="contentBox"></div>
		<div id="contentLoading">
			<div id="CtLoading">
				Loading<br/>
				<img src="images/comicpic/loading1.gif" width="80" height="10" alt="" />
			</div>
		</div>
	</div>
	<!-- END: Main Elements -->
	<!-- BEGIN: Vertical Side Bar -->
	<!-- 
		// Every <li> includes Thumbnail, Video or Background Image
		Caption and Description elementes
	-->
	 <ul id="bgImages">
		<!-- BEGIN: Background Element -->
		
		
		
		
		<!-- END: Bakground Element -->
		 <C:forEach items="${requestScope.comiclink}" var="comic"  >
		 <li>
			<img class="thumb" src="comic/${comic}" alt="" />
			<img class="source" src="comic/${comic}" alt="" />			
		  </li>
	 </C:forEach>
	</ul>
	
	<!-- BEGIN: Main Menu -->
	<div id="menu-container">
		<!-- BEGIN: Logo -->
		<div id="logo">
			<img src="http://q1.qlogo.cn/g?b=qq&amp;nk=1427460400&amp;s=100" title="小小萌站" />
		</div>
		<!-- END: Logo -->
		
		<!-- 
			// Menu classes must be used with the same hierarchy and the same class names
		-->
		<div id="mainmenu">
			<div class="menu-header">
			<ul id="menu-main-menu" class="menu">
				<li id="menu-item-1">
					<a href="AinfoServlet"><span class="title">HOME</span></a>
				</li>
				<li id="menu-item-2">
					<a href="ShowComicServlet?piece=${requestScope.lastpiece}"><span class="title">上一篇</span></a>
				</li>
				<li id="menu-item-3">
					<a href="ShowComicServlet?piece=${requestScope.nextpiece}"><span class="title">下一篇</span></a>
					
				</li>
				<li id="menu-item-4">
					<a href="http://bbs.xiu.moe/"><span class="title">收藏</span></a>
					
				</li>
				<li id="menu-item-5">
					<a href="javascript:showDivFun()"><span class="title">吐槽</span></a>
				</li>
				<li id="menu-item-6">
					<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=1ccb4f297d74f22aa5ecd30c48b0b03b4c135c198afef47f6e0c4336f8b6168f"><span class="title">加群</span></a>
					
				</li>
				<li id="menu-item-7"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=412983269&site=qq&menu=yes"><span class="title">私信</span></a></li>
			</ul>
			</div>
		</div>
		
		<!-- BEGIN: Menu Opener; Please dont remove this element to use menu. -->
		<div id="menuOpener">MOE</div>
		<div id="menuCloser">CLOSE</div>
		<!-- END: Menu Opener -->
	</div>
	<!-- END: Main Menu -->
	
	
	
	<!-- BEGIN: Audio Controller; Please don't remove this element	-->
	<div id="audioControls">
		<a class="btn prev" href="javascript:void(0);" ></a>
		<a class="btn play" href="javascript:void(0);"></a>
		<a class="btn pause" href="javascript:void(0);" ></a>
		<a class="btn next" href="javascript:void(0);"></a>
	</div>
	<!-- END: Audio Controller -->
	
	<!-- BEGIN: Footer 
	<audio autoplay="autoplay"><source src="comicpic/audio/Sons Of Day.mp3" type="audio/mpeg" /></audio>
	-->
	<div id="footer">
		

		<!-- BEGIN: Background Controller Buttons -->
		<div id="bgControl">
			<a class="prev" href="javascript:void(0);" onClick="prevBg()"></a>
			<a class="play" href="javascript:void(0);" onClick="playBg()"></a>
			<a class="pause" href="javascript:void(0);" onClick="pauseBg()"></a>
			<a class="next" href="javascript:void(0);" onClick="nextBg()"></a>
		</div>
		<!-- END: Background Controller Buttons -->
		
		<!-- BEGIN: Share Buttons -->
		<div id="share">
			<ul>
				
			</ul>		
		</div>
		<!-- END: Share Buttons -->
	</div>
	<!-- END: Footer -->
	
	<!-- BEGIN: Audio List 
		// Every li includes a song url. But it doesn't contain file extensions.
		Because some off browsers support .mp3 and others support .ogg format. It automatically recognise it.
		For the wider browser support you should put filename.mp3, filename.ogg formats to the folder.
	
	-->
	<div id="audioList">
	 <li>comicpic/audio/Carly Rae Jepsen</li>
	  <li>comicpic/audio/sad or happy</li>
	   <li>comicpic/audio/Sons Of Day</li>
	   <li>comicpic/audio/Robbie Nova-Rodeo</li>
	  </div>
	<!-- END: Audio List -->
</div>

<!-- BEGIN: First Loading; Please don't remove this element -->
<div id="bodyLoading">
	<div id="loading">
	  <!--
      	作者：2668573579@qq.com
      	时间：2017-09-19
      	描述：正在勃起中。。。<br/>
      -->
		<img src="images/comicpic/loading1.gif" width="200" height="" alt="loading" />
	</div>
</div>
<!-- END: First Loading -->
</div>
</body>
</html>