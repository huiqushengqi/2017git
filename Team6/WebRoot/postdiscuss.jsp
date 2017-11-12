<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html >

	<head>
		</script>
		<script type="text/javascript" async="" src="style/js/conversion.js"></script>
		<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
		<style type="text/css"></style>
		<meta content="no-siteapp" http-equiv="Cache-Control">
		<link media="handheld" rel="alternate">
		<!-- end 云适配 -->
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>讨论区</title>
		<meta content="23635710066417756375" property="qc:admins">
		<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
		<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
		<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

		<!-- <div class="web_root"  style="display:none">h</div> -->
		<script type="text/javascript">
			var ctx = "h";
			console.log(1);
		</script>
		<link href="h/images/favicon.ico" rel="Shortcut Icon">
		<link href="style/css/style.css" type="text/css" rel="stylesheet">
		<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
		<link href="style/css/popup.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
		<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
		<script src="style/js/additional-methods.js" type="text/javascript"></script>
		<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
		<script type="text/javascript">
			var youdao_conv_id = 271546;
		</script>
		<script src="style/js/conv.js" type="text/javascript"></script>
		<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/edit/xheditor-1.1.10-zh-cn.min.js"></script>
	</head>

	<body>
		<div id="body">
			<div id="header">
				<jsp:include page="top.jsp"></jsp:include>
			</div>
			<!-- end #header -->
			<div id="container">

				<div class="clearfix">
					<div class="content_l">
						<dl class="c_collections">
							<dd>
								<form action="/Team6/Controller?flag=postdiscuss" method="post">
								<input class="discuss-topic-title" placeholder="标题：一句话说明你遇到的问题或想分享的经验" value="" type="text" style="width:655px;" name="title">
								<br />
								<br />
								<textarea class="xheditor {width:'680px',height:'350'}" rows="20" cols="80" name="content"></textarea>
								<br/>
								<br/>
								<input type="submit" id="search_button" value="发布">
								</form>
							</dd>
						</dl>
					</div>
					<div class="content_r">

						<div class="mycenterR" id="">
							<a href="/Team6/Controller?flag=showdiscuss">
								<h2>返回讨论区首页</h2></a>
							<!--<a href="collections.html">我收藏的职位</a>
							<br>
							<a target="_blank" href="subscribe.html">我订阅的职位</a>-->
						</div>
						<!--end #myInfo-->
						<div class="greybg qrcode mt20">
							<img width="242" height="242" alt="公众号二维码" src="style/images/qr_delivery.png">
							<span class="c7">扫描二维码，微信轻松搜工作</span>
						</div>
					</div>
				</div>
				<script src="style/js/collections.min.js"></script>
				<script>
					$(function() {
						$('.Pagination').pager({
							currPage: 1,
							pageNOName: "pageNo",
							form: "collectionsForm",
							pageCount: 1,
							pageSize: 5
						});
					});
				</script>
				<div class="clear"></div>
				<input type="hidden" value="4c6ae41d8c254f91becdb5f9ef2d4394" id="resubmitToken">
				<a rel="nofollow" title="回到顶部" id="backtop"></a>
			</div>
			<!-- end #container -->
		</div>
		<!-- end #body -->
		<jsp:include page="footer.jsp"></jsp:include>

		<script src="style/js/core.min.js" type="text/javascript"></script>
		<script src="style/js/popup.min.js" type="text/javascript"></script>

		<!--  -->

		<script type="text/javascript">
			$(function() {
				$('#noticeDot-1').hide();
				$('#noticeTip a.closeNT').click(function() {
					$(this).parent().hide();
				});
			});
			var index = Math.floor(Math.random() * 2);
			var ipArray = new Array('42.62.79.226', '42.62.79.227');
			var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
			var CallCenter = {
				init: function(url) {
					var _websocket = new WebSocket(url);
					_websocket.onopen = function(evt) {
						console.log("Connected to WebSocket server.");
					};
					_websocket.onclose = function(evt) {
						console.log("Disconnected");
					};
					_websocket.onmessage = function(evt) {
						//alert(evt.data);
						var notice = jQuery.parseJSON(evt.data);
						if(notice.status[0] == 0) {
							$('#noticeDot-0').hide();
							$('#noticeTip').hide();
							$('#noticeNo').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
							$('#noticeNoPage').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
						} else {
							$('#noticeDot-0').show();
							$('#noticeTip strong').text(notice.status[0]);
							$('#noticeTip').show();
							$('#noticeNo').text('(' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
							$('#noticeNoPage').text(' (' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
						}
						$('#noticeDot-1').hide();
					};
					_websocket.onerror = function(evt) {
						console.log('Error occured: ' + evt);
					};
				}
			};
			CallCenter.init(url);
		</script>

		<div id="cboxOverlay" style="display: none;"></div>
		<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
			<div id="cboxWrapper">
				<div>
					<div id="cboxTopLeft" style="float: left;"></div>
					<div id="cboxTopCenter" style="float: left;"></div>
					<div id="cboxTopRight" style="float: left;"></div>
				</div>
				<div style="clear: left;">
					<div id="cboxMiddleLeft" style="float: left;"></div>
					<div id="cboxContent" style="float: left;">
						<div id="cboxTitle" style="float: left;"></div>
						<div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button>
						<div id="cboxLoadingOverlay" style="float: left;"></div>
						<div id="cboxLoadingGraphic" style="float: left;"></div>
					</div>
					<div id="cboxMiddleRight" style="float: left;"></div>
				</div>
				<div style="clear: left;">
					<div id="cboxBottomLeft" style="float: left;"></div>
					<div id="cboxBottomCenter" style="float: left;"></div>
					<div id="cboxBottomRight" style="float: left;"></div>
				</div>
			</div>
			<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
		</div>
	</body>

</html>