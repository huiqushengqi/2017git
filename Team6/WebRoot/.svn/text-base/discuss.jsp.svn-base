<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>

<!DOCTYPE HTML>
<html>

<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
<style type="text/css"></style>
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>讨论区</title>
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
			function showsession(){
				alert("${sessionScope.user}")
			}
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
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
						<dt>
							<h1>
								<em></em>热门讨论
							</h1>
						</dt>
						<dd>
							<ul class="reset my_collections">
								<c:forEach items="${requestScope.list}" var="message">
									<li>
										<!--这个用来显示发布留言人的头像--> <a  target="_blank" href=""> <img alt="" src="Upload/${message.message_user.user_img }">
									</a>

										<div class="co_item">
											<!--这个用来显示留言标题-->
											<h2 title="${message.message_title}">
												<a target="_blank" href="/Team6/Controller?flag=showdetail&messageid=${message.message_id}"> <em>${message.message_title}</em> 
												</a>
											</h2>

											<!--用来显示发布留言的时间-->
											<span class="co_time">发布时间：${message.message_date }</span>

											<!--用来显示一部分留言内容-->
											<div class="co_cate">这里是留言的部分内容。。。</div>

											<!--下面两个a标签可以用来显示浏览次数和评论次数-->
											<!-- <a class="collection_link" target="_blank" href="">浏览次数</a> --> <span style="color: #9e73ff;">发布者:${message.message_user.user_name}</span> 
											<%-- <a class="collectionCancel collection_link collected"> 发布者:${message.message_user.user_name}</a> --%>
										</div>
									</li>
								</c:forEach>
							</ul>
						</dd>
						<dd>
							<div class="mypage">
								<pt:page pageIndex="${requestScope.curpage }" url="/Team6/Controller?flag=showdiscuss&" pageMax="${requestScope.totalpage }" />
							</div>
						</dd>
					</dl>
				</div>
				<div class="content_r">

					<div class="mycenterR" id="">
						<a href="/Team6/Controller?flag=entryPostDiscuss" ><h2>我要发布</h2></a>
					</div>
					<!--end #myInfo-->
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="拉勾微信公众号二维码" src="style/images/qr_delivery.png"> <span class="c7">扫描二维码，微信轻松搜工作</span>
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
			<input type="hidden" value="4c6ae41d8c254f91becdb5f9ef2d4394" id="resubmitToken"> <a rel="nofollow" title="回到顶部" id="backtop"></a>
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
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
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
</html>